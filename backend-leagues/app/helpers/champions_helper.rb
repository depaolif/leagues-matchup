module ChampionsHelper
	def getChampionEnemyTips(id)
		response = RestClient.get "https://na1.api.riotgames.com/lol/static-data/v3/champions/266?champData=all&api_key=RGAPI-17b84d33-1b75-47b4-b5d7-ac9004579f30"
		enemytips = JSON.parse(response.body)["enemytips"]
		enemytips
	end

	def getChampionImages(name)
		loading_splash = "http://ddragon.leagueoflegends.com/cdn/img/champion/loading/#{name}_0.jpg"
		icon = "http://ddragon.leagueoflegends.com/cdn/#{$ddragon_version}/img/champion/#{name}.png"
		{:loading_splash => loading_splash, :icon => icon}
	end

	def getChampionId(name)
		$champion_list[name]
	end
end
