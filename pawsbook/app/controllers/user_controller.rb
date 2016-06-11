class UserController < ApplicationController
<<<<<<< HEAD
  
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

>>>>>>> a02988c03d7670383f9aaef3bd114818792e1f83
end
