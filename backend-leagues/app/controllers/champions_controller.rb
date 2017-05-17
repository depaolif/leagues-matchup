class ChampionsController < ApplicationController
	include ChampionsHelper

	def create
		# params should have the champion's name and the champion's party
		name, party = params.values_at(:name, :party)

		# get all attributes for record
		id = getChampionId(params[:name])
		enemytips = getChampionEnemyTips(id)
		loading_splash, icon = getChampionImages(name).values_at(:loading_splash, :icon)
				
		# create record if it does not exist, or update with the most current
		champion = Champion.find_or_create_by(id: id)
		champion.update(name: name, enemytips: enemytips, loading_splash: loading_splash, icon: icon)
		byebug
		render json: champion
	end

end

