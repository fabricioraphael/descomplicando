class UsersController < ApplicationController
  # before_filter :authenticate_user!

  def index
  end
  
  def new
     @user = User.new
  end
  
  def create
     @user = User.new params[:user]
     @user.role = "commentator"
     if @user.save
        sign_in @user
        redirect_to :controller => :profiles, :action => :new
     else
        render :action => :new
     end
   end
end
