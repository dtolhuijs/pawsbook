class UserController < ApplicationController

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

end
