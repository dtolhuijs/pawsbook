class UserController < ApplicationController

  def index
    @users = User.all
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
     @users = read_users.select do |user|
       user[:name].include?(@q)
     end
     erb :'user/results'
    end
  end
end
