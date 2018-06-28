class TransactionPdf < Prawn::Document
  def initialize(transactions_details,user)
    super(top_margin: 70)
    @transactions = transactions_details
    @user = user
    display_header
    transaction
    display_available_balance
  end

  def display_header
    text "Mini Statement For Account: #{@user.account.account_number}",size: 15, style: :bold
    text "Bank: #{@user.bankname}",size: 15
  end

  def transaction
    move_down 20
    table transaction_rows do
      row(0).font_style = :bold
      columns(1..3).align = :right
      self.row_colors = ['DDDDDD', 'FFFFFF']
      self.header = true
    end
  end

  def transaction_rows
    [["Date", "Account Number", "Transaction Type","Amount"]] +
    @transactions.map do |transaction|
      [ 
        transaction.created_at.strftime('%m/%d/%y--%H:%M:%S'),
        account_number(transaction.account, transaction.user.account),
        transaction_type(transaction.account, transaction.user.account),
        transaction.amount,
      ]
    end
  end

  def account_number(to_account, from_account)
   if to_account.id  == @user.account.id
     from_account.account_number
   else
     to_account.account_number
   end
 end

  def transaction_type(from_account, to_account)
    if to_account.id == @user.account.id
      "DEBIT"
    else
      "CREDIT"
    end
  end

  def display_available_balance
    move_down 20 
    text "Available Balance : #{@user.account.balance}"
  end
end




