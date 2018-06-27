class TransactionMailer < ApplicationMailer
  default from: "bsaluja12121@gmail.com" 

  def amount_credited(user,amount)
    @user = user
    @amount = amount
    mail(to: @user.email, subject: 'Amount Credited')
  end

  def amount_debited(user,amount)
    @user = user
    @amount = amount
    mail(to: @user.email, subject: 'Amount Debited')
  end

  def send_otp(user,otp)
    @user = user
    @otp = otp
    mail(to: @user.email, subject: 'One Time Password')
  end
end
