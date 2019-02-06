class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    @city = @user.city_id
    @city_name = City.find(@city)
  end
end
