class KiwiController < ApplicationController

	def index
		@kiwi = Kiwi.all
		# gives intance variable of all kiwi
	end

	def show
		@kiwi = Kiwi.find(params[:id])
	end

	def new
		@kiwi = Kiwi.new
	end

	def create
		@kiwi = Kiwi.find(params[:kiwi])
		if @kiwi.save
			redirect_to @kiwi
		end
			render new
		end
	end

	def destroy
		@kiwi = Kiwi.find(params[:id])
		@kiwi.destroy
	end

end