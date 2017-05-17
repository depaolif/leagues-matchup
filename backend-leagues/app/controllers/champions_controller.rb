class ChampionsController < ApplicationController
	include ChampionsHelper

	def create
		# params should have the champion's name and the champion's party
		id = getChampionId(params[:name].titleize)
		byebug
		party = params["party"]
		if party == "enemy" 
			enemytips = 
		champion = Champion.find_or_create_by(id: id)
	end

end


