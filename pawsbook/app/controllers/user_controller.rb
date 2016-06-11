class UserController < ApplicationController
  def index
    @users = User.all
  end

  def show
    #Shows a profile id
    @user = User.find (params[:id])
  end

  def search
    #Searches for a profile id and then shows it on search results page
  end

  

end
