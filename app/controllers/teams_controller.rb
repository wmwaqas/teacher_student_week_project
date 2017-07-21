class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    @users = @team.users

  end

  def create
     set_students
     create_team
   end

  def set_students
    @students = User.all
    @user_id = @students.ids
    @teams_to_be = @user_id.combination(2).to_a
  end

  def create_team
    for user in @user_id
      team_1 = Team.create
      #   if team_1.length < 2 do
      #   team_1 << user
      # end
        # if @user_id.find team_1(team_1)<2
        @teams = []
        selection = @teams_to_be.sample
        @teams << selection
      end

      @teams.each do |team|
        team.each do |user|
        x = user.find_by @user_id
        x.team = team_1
      end
    end
  end


end

# def create_team
#   for team in 1..@user_id/2
#     team_1 = Team.create
#     if user.find_by Team(team_1) < 2
#       selection = possible_teams.sample
#     end
# end
