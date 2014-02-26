require 'sinatra'
require 'csv'
 get '/' do
   @player_data=[]
	CSV.foreach('rosters.csv', headers: true) do |row|
		@player_data<<row.to_hash
	end
	#put
   erb :index
 end

 get '/Simpson Slammers' do
   @player_data=[]
	CSV.foreach('rosters.csv', headers: true) do |row|
		@player_data<<row.to_hash
	end
	#put
   erb :team2

 end

 get '/Flinestone_Fire' do
   @player_data=[]
	CSV.foreach('rosters.csv', headers: true) do |row|
		@player_data<<row.to_hash
	end
	#put
   erb :team3

 end

 get '/Griffin_Goats' do
   @player_data=[]
	CSV.foreach('rosters.csv', headers: true) do |row|
		@player_data<<row.to_hash
	end
	#put
   erb :team4

 end


#def player_report #(team_name, player_data)
	#cib=''
	# @player_data=[]
	# CSV.foreach('rosters.csv', headers: true) do |row|
	# 	@player_data<<row.to_hash
	# end
	# #puts player_data
#end

# 

# def selection 
	# @player_data.each do |item|
	# 	if item["team"] == "Jetson Jets"
	# 		puts "#{item["last_name"]}, #{item["first_name"]}: #{item["position"]}"
# 		end
# 	end
# end







