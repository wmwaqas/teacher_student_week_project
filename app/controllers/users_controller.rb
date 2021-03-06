class UsersController < ApplicationController
  before_action :authenticate_user!
  attr_accessor :admin
  # before_action :admin_only, except: :show

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    #   unless is_admin
    #     unless current_user
    #     # redirect_to root_path, alert => "Access Denied"
    #   end
    # end
  end

  def make_student
    user = User.find(params[:id])
    # user.update(:admin => true)
    user = user.update(:admin => false)
    redirect_to users_path
    # user.update_attribute(:admin => true)
  end

  def make_admin
    user = User.find(params[:id])
    user = user.update(:admin => true)
    redirect_to users_path
  end


  private
  def user_params
    params.require(:user).permit(:admin)
  end
end
  # def is_admin
  #   current_user.admin?
  # end
  #
  # def current_user
  #   @user == current_user
  # end
