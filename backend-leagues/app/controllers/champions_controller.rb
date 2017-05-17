class ChampionsController < ApplicationController
	include ChampionsHelper

	def getPlayerChampion
		champion = getAndStoreChampionAttributes(params[:name])

		# placeholder enemy key for champion -- will be changed to winrate
		champion_hash = champion.as_json
		champion_hash["enemy"] = params[:enemy_name]
		render json: champion_hash
	end

	def getEnemyChampion
		champion = getAndStoreChampionAttributes(params[:name])
		render json: champion
	end

	private

	def getAndStoreChampionAttributes(name)
		# get all attributes for record
		id = getChampionId(name)
		enemytips = getChampionEnemyTips(id)
		loading_splash, icon = getChampionImages(name).values_at(:loading_splash, :icon)
				
		# create record if it does not exist, or update with the most current
		champion = Champion.find_or_create_by(id: id)
		champion.update(name: name, enemytips: enemytips, loading_splash: loading_splash, icon: icon)
		champion
	end

end

