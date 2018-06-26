class UserMailer < ApplicationMailer
  default from: "bsaluja12121@gmail.com" 

  def verification_mail
    @user = params[:user]
   # @url  = 'localhost:3000/welcome/index'
    mail(to: @user.email, subject: 'verification_mail')
  end

  def beneficiary_added(user)
    
    @user = user
   # @url  = 'localhost:3000/welcome/index'
    mail(to: @user.email, subject: 'Beneficiary Added Successfully')
  end
  
  
end
