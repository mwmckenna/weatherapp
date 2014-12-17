class UsersController < ApplicationController
  def profile
    if session[:user_id]
      @current_user = User.find session[:user_id]
      @new_outfit = @current_user.outfits.new
    else
      redirect_to '/login'
    end
  end

  def create_outfit
    if session[:user_id]
      @current_user = User.find session[:user_id]
      @current_user.outfits.create(outfit_params)
      redirect_to :back
    else
      redirect_to '/login'
    end
  end


  def location
  end

  def update_location
    @user = User.find_by username: user_params[:username]
    @user.update_attributes(location: user_params[:location])
    render
  end

  private
    def outfit_params
    params.require(:outfit).permit(:title, :location, :temp_min, :temp_max, :description, :img_url, :star_rating )
    end


end

