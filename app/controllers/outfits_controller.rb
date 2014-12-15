class OutfitsController < ApplicationController
  def index
    if params["temp_min"].to_i == 0
      flash["failure"]= "Please input a time greater than zero."
      redirect_to home_path
    end
    @outfit_list = Oufit.temp_constraints
    if @activity_list.length == 0
      flash["failure"] = "No results were returned."
      redirect_to home_path
    end
  end

  def show
    @outfit = Outfit.find params[:id]
    @filtered_outfits_by_temp = Outfit.find([5,6])
  end

  def create
    if session[:user_id]
      @current_user = User.find session[:user_id]
      @current_user.activities.create(activity_params)
      redirect_to home_path
    else
      redirect_to '/login'
    end
  end

def favorite
    type = params[:type]
    if type == "favorite"
      @current_user = User.find session[:user_id]
      favorite = @current_user.favorites.new
      favorite.outfit_id = params[:outfit_id]
      favorite.user_id = session[:user_id]
      favorite.save
      redirect_to :back, notice: 'Added to favorites!'
    else
      # Type missing, nothing happens
      redirect_to :back, notice: 'Nothing happened.'
    end
  end

  def update
  end

  def destroy
  end

  private
  def outfit_params
    params.require(:outfit).permit(:title, :location, :temp_min, :temp_max, :description, :img_url, :star_rating )
  end
end
