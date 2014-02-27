require 'sinatra'
require 'csv'

get '/' do

@player_data=[]

 CSV.foreach('rosters.csv', headers: true) do |row|
  @player_data<<row.to_hash
end

# @playa_position = []
# @player_data.each do |playa|
#   if playa["position"] == params[:position]
#     @playa_position << playa
#   end
# end

  @page_title = params[:position]

  erb :home
end


#ABOVE^ IS HOME PAGE STUFF . BELOW v IS PLAYER POSITIONS AND TEAM PAGE STUFF
get '/players/:position' do
 @player_data=[]

 CSV.foreach('rosters.csv', headers: true) do |row|
  @player_data<<row.to_hash
end

@playa_position = []
@player_data.each do |playa|
  if playa["position"] == params[:position]
    @playa_position << playa
  end
end

  @page_title = params[:position]
  erb :players
end

get '/team/:team' do
 @playa_position=[]
 @player_data=[]

 CSV.foreach('rosters.csv', headers: true) do |row|
  @player_data<<row.to_hash
end

@player_data.each do |playa|
  if playa["team"] == params[:team]
    @playa_position << playa
  end
end

  @page_title = params[:team]
  erb :players
end


# get '/teams/:team_name' do
#  @player_data=[]
#  CSV.foreach('rosters.csv', headers: true) do |row|
#   @player_data<<row.to_hash
# end
# 	#put
#   page_title = params[:team_name]
#   erb :team2


