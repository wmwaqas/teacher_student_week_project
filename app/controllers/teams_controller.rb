class TeamsController < ApplicationController
  def index
    @teams = current_user.team
  end

  def show
    @users = @team.users
  end
end
