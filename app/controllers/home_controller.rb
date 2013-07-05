class HomeController < ApplicationController
  def index
    # @teams_array = [current_user.team1, current_user.team2, current_user.team3]

    @team1 = (Team.where(:name => "#{current_user.team1}")).first
    @team2 = (Team.where(:name => "#{current_user.team2}")).first
    @team3 = (Team.where(:name => "#{current_user.team3}")).first

    file1 = open("http://api.espn.com/v1/sports/#{@team1.sport}/#{@team1.league}/teams/#{@team1.espn_id}/news?apikey=#{ENV['ESPN_API_KEY']}")
    @results1 = JSON.load(file1.read)["headlines"]

    # team_info_file1 = open("http://api.espn.com/v1/sports/#{@team1.sport}/#{@team1.league}/teams/#{@team1.espn_id}?apikey=ESPN_API_KEY")
    # @team_info_results1 = JSON.load(team_info_file1.read)["sports"][0]["leagues"][0]["teams"][0]["links"]["web"]["teams"]["href"]

    # file2 = open("http://api.espn.com/v1/sports/#{@team2.sport}/#{@team2.league}/teams/#{@team2.espn_id}/news?apikey=ESPN_API_KEY")
    # @results2 = JSON.load(file2.read)["headlines"]

    # team_info_file2 = open("http://api.espn.com/v1/sports/#{@team2.sport}/#{@team2.league}/teams/#{@team2.espn_id}?apikey=ESPN_API_KEY")
    # @team_info_results2 = JSON.load(team_info_file2.read)["sports"][0]["leagues"][0]["teams"][0]["links"]["web"]["teams"]["href"]

    # file3 = open("http://api.espn.com/v1/sports/#{@team3.sport}/#{@team3.league}/teams/#{@team3.espn_id}/news?apikey=ESPN_API_KEY")
    # @results3 = JSON.load(file3.read)["headlines"]

    # team_info_file3 = open("http://api.espn.com/v1/sports/#{@team3.sport}/#{@team3.league}/teams/#{@team3.espn_id}?apikey=ESPN_API_KEY")
    # @team_info_results3 = JSON.load(team_info_file3.read)["sports"][0]["leagues"][0]["teams"][0]["links"]["web"]["teams"]["href"]
  end
end
