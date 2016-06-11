class UserController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
  @user = User.find(params[:id])
end

 def update
  @user = User.find( params[:id] )

  user_params = params.require( :user ).permit( :name, :animal, :gender )

  if @user.update_attributes( user_params )
     redirect_to @user
  else
     render 'edit'
  end
end

  def show
    @user = User.find( params[:id])
  end

  def create
      user_params = params.require( :user ).permit( :name, :animal, :gender )

      @user = User.new( user_params )

      if @user.save
         redirect_to @user
      else
         render 'new'
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

  def destroy
      @user = User.find( params[:id] )

      @user.destroy

      redirect_to users_path
   end

  private

     def user_params
        params.require( :user ).permit( :name, :animal, :gender )
     end

end
