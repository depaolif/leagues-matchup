class ChampionsController < ApplicationController
	include ChampionsHelper

	def create
		byebug
		id = getChampionId(params[:name])
	end


end


