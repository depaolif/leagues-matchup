response = RestClient.get "https://na1.api.riotgames.com/lol/static-data/v3/champions?dataById=true&api_key=#{ENV["RIOT_DEVELOPMENT_KEY"]}"
champion_list_by_id = JSON.parse(response.body)["data"]
$champion_list = {}
champion_list_by_id.each do |key, value|
	name = value["name"]
	$champion_list[name] = key
end