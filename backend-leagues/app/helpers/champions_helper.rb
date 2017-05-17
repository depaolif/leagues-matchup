module ChampionsHelper
	def getChampionInfo(id)
		RestClient.get "http"
	end

	def getChampionId(name)
		$champion_list[name]
	end
end
