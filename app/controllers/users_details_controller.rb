class UsersDetailsController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def verify
    @user = User.find(params[:id])
    @user.update_columns(verify: true) if !@user.verify
    UserMailer.with(user: @user).verification_mail.deliver
    redirect_to users_details_path
  end
end
