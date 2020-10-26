class WelcomeController < ApplicationController
  def username
  	@name = params[:username]
  end
end
