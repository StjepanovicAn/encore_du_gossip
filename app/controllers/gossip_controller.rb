class GossipController < ApplicationController

	def index
		@gossips = Gossip.all

	end

	def show
  		@gossip = Gossip.find(params[:id])
	end

	def new
		@gossip = Gossip.new(user: User.find(1))

	end

	def create
		@gossip = Gossip.new(params[:gossip]) #c'est censé trouver les params donné dans le formulaire mais il arrive pas à les sauvegarder
		if @gossip.save 
			puts "m"*50
			puts "bravo!"
			puts "m"*50
			render :index

		else
			puts "m"*50
			puts "dommage"
			puts "m"*50
			render :new
		end


	end

	def edit

	end

	def update

	end

	def destroy

	end
end
