Team.destroy_all
User.destroy_all

# Teams
team_1 = Team.create!(name: "Team 1")
team_2 = Team.create!(name: "Team 2")
team_3 = Team.create!(name: "Team 3")
team_4 = Team.create!(name: "Team 4")
team_5 = Team.create!(name: "Team 5")

# Admins
admin_1 = User.create!(email: "arno@arno.com", password: "abcd1234", admin: true)
admin_2 = User.create!(email: "wouter@wouter.com", password: "abcd1234", admin: true)
admin_3 = User.create!(email: "miriam@miriam.com", password: "abcd1234", admin: true)

# Users
user_1 = User.create!(email: "chuday@chuday.com", password: "abcd1234", admin: false, team: team_1)
user_2 = User.create!(email: "waqas@waqas.com", password: "abcd1234", admin: false, team: team_1)
user_3 = User.create!(email: "lissana@lissana.com", password: "abcd1234", admin: false, team: team_2)
user_4 = User.create!(email: "ben@ben.com", password: "abcd1234", admin: false, team: team_2)
user_5 = User.create!(email: "kate@kate.com", password: "abcd1234", admin: false, team: team_3)
user_6 = User.create!(email: "yassin@yassin.com", password: "abcd1234", admin: false, team: team_3)
user_7 = User.create!(email: "boris@boris.com", password: "abcd1234", admin: false, team: team_4)
user_8 = User.create!(email: "jamei@jamei.com", password: "abcd1234", admin: false, team: team_4)
user_9 = User.create!(email: "lorenzo@lorenzo.com", password: "abcd1234", admin: false, team: team_5)
user_10 = User.create!(email: "freddy@freddy.com", password: "abcd1234", admin: false, team: team_5)
