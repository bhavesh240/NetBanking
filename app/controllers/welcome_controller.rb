class WelcomeController < ApplicationController
  
  def index
    @users = User.all
  end

=begin  def show
    @user = User.find(params[:id])
  end
=end
end
