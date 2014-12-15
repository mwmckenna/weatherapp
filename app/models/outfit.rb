class Outfit < ActiveRecord::Base
  belongs_to :user

  has_many :favorites
  has_many :favorited, through: :favorites, source: :user
  # has_many :taco, through: :join_table, source: :model_trying_to_return

  def self.temp_constraints temp, user=nil
    if user
      return fun_outfits(temp).where("id not in (?)", user.favorited.select("outfits.id"))
    end

    fun_outfits temp
  end

  private

  def self.fun_outfits temp
     where("temp_min <= ").where("temp_max IS NULL OR time_max >= ")
  end
end
