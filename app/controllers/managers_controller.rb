class ManagersController < ApplicationController
  
  def index
    @users = User.all.where(bankname: current_user.bankname)
    @managers = Bank.all
  end

  def new 
  end

  def create
    account_number = params[:account_number]
    account = Account.find_by_account_number(account_number)
    if account
      user = User.find(account.user_id)
      Bank.create(bankname: user.bankname,manager_name: user.firstname+" "+user.lastname)
      user.add_role("manager")
      redirect_to managers_path
    else
      flash[:alert] = "Account doesn't exists"
      redirect_to new_manager_path
    end
  end
  
end
