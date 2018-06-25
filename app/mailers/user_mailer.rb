class UserMailer < ApplicationMailer
  default from: "bsaluja12121@gmail.com" 

  def verification_mail
    @user = params[:user]
   # @url  = 'localhost:3000/welcome/index'
    mail(to: @user.email, subject: 'verification_mail')
  end
  
end
