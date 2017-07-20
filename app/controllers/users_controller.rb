class UsersController < ApplicationController
  before_action :authenticate_user!
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

  def change_status
  end

  def make_student
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
