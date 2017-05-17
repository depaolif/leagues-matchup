module ChampionsHelper
	def getChampionId(name)
		# looks to the API to get the champion name's ID
		response = RestClient.get "https://na1.api.riotgames.com/lol/static-data/v3/champions?dataById=true&api_key=#{ENV["RIOT_DEVELOPMENT_KEY"]}"
		champion_list = JSON.parse(response.body)
		binding.pry

	end
	# def getChampionInfo
	# 	response = RestClient.get ""
	# end
end
