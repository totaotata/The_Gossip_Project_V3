class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    @city = @user.city_id
    @city_name = City.find(@city)
  end
  def create
    @user = User.new('email' => params[:email],
                    'password' => params[:password],
                     'password_confirmation' => params[:password_confirmation],
      'first_name' => params[:email])
    if @user.save
      redirect_to welcome_path
    else
      render new_user_path
    end
  end
  def new
    @user = User.new
  end

end
