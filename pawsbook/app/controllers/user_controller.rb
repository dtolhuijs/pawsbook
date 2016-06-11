class UserController < ApplicationController
<<<<<<< HEAD
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

  
=======

  def index
    @user = User.all
  end

  def show
    @user = User.find( params[:id])
  end

  def new
    @user = User.new
  end

  def user_search
    post '/user/search' do
     @q = params[:query]
     @users = read_users.select do |contact|
       user[:name].include?(@q)
     end
     erb :'user/results'
    end
>>>>>>> 1d3dba0b1d9b6126a68d34ee95e46fa147a19e36

end
