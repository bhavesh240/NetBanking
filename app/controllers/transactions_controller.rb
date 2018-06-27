class TransactionsController < ApplicationController

  def index
    @transactions_credited = Transaction.all.where(account_id: current_user.account.id)
    @transactions_debited = current_user.transactions

    @transactions = @transactions_credited.or(@transactions_debited)
  end

  def new
    @transaction = Transaction.new
  end

  def create

    to_account_number = params[:transaction].values[0] 
    amount = params[:transaction].values[1].to_i

    to_account = Account.find_by_account_number(to_account_number)

    to_account_user = User.find(to_account.user_id)

    beneficiary_exist = current_user.beneficiaries.where(account_number: to_account_number).first


    if (beneficiary_exist && current_user.account.otp == params[:transaction].values[2].to_i)

      to_account.update_columns(balance: (to_account.balance.to_i + amount))
      current_user.account.update_columns(balance: (current_user.account.balance.to_i - amount),otp: nil)
      Transaction.create(user_id: current_user.id,account_id: to_account.id,amount: amount)

      TransactionMailer.amount_credited(to_account_user,amount).deliver
      TransactionMailer.amount_debited(current_user,amount).deliver

      redirect_to transactions_path
    else
      redirect_to new_transaction_path
    end
  end

  def generate_otp
    otp = SecureRandom.random_number(9e3).to_i
    @account = Account.find(params[:id])
    @account.update_columns(otp: otp)
    TransactionMailer.send_otp(current_user, otp).deliver

    respond_to do |format|
    format.js
    end
  end

end

 


