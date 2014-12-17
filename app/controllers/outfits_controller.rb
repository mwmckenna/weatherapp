class OutfitsController < ApplicationController
    def new
    if session[:user_id]
      @current_user = User.find session[:user_id]
      @new_outfit = @current_user.outfits.new
    else
      redirect_to '/login'
    end
  end

  def index
    @outfit_list = Outfit.temp_constraints
    if @outfit_list.length == 0
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
      @current_user.outifts.create(outfit_params)
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
