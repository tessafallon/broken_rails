class KiwisController < ApplicationController

	def index
		@kiwis = Kiwi.all
	end

	def show
		@kiwi = Kiwi.find(params[:id])
	end

	def new
		@kiwis = Kiwi.new
	end

	def create
		@kiwi = Kiwi.find(params[:kiwi])
		if @kiwi.save
			redirect_to @kiwi
		else
			render new
		end
	end

	def destroy
		@kiwi = Kiwi.find(params[:id])
		@kiwi.destroy
	end

end