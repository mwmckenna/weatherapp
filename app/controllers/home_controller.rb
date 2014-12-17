class HomeController < ApplicationController
  def index
    if session[:user_id]
      @current_user = User.find session[:user_id]
    end
  end

  def show
      @hourly_lookup = HourlyLookup.new(params[:location])
      @hourly_lookup.fetch_weather
  end
end

class HourlyLookup

  attr_reader :location

  def initialize(location)
    @location = location
   end

  def fetch_weather
    response = HTTParty.get("http://api.wunderground.com/api/ad4b2b48ae07c31f/hourly/q/CA/#{location}.json")
    parse_response(response)
  end

  def parse_response(response)
    #parse the things
  end
end

  # def create
  #   if session[:user_id]
   #    @current_user = User.find session[:user_id]
    #   @current_user.outfits.create(outfit_params)
  #     redirect_to home_path
    # else
    #   redirect_to '/login'
    # end
  # end

  # private
  # def outfit_params
  #   params.require(:outfit).permit(:title, :temp_min, :temp_max, :description, :img_url, :star_rating )
  # end

