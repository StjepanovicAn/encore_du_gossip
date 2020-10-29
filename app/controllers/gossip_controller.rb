class GossipController < ApplicationController

	def index
		@gossips = Gossip.all	

	end

	def show
  		@gossip = Gossip.find(params[:id])
	end

	def new
		@gossip = Gossip.new

	end

	def create
		@gossip = Gossip.new('title' => params[:title],
								'content' => params[:content],
								'user' => User.find(1) )
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
		@gossip = Gossip.find(params[:id])
	end

	def update
		@gossip = Gossip.find(params[:id])

		if @gossip.update('title' => params[:title],
								'content' => params[:content],
								'user' => params[:user.id])
			redirect_to @gossip
		else
			render :edit
		end

	end

	def destroy
		@gossip = Gossip.find(params[:id])
		@gossip.destroy
		redirect_to gossip_path

	end
end
