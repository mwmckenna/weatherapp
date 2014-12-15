class User < ActiveRecord::Base
  has_secure_password

  validates :username,
    presence: true,
    uniqueness: true

  has_many :outfits

  has_many :favorites
  has_many :favorited, through: :favorites, source: :outfit
  # has_many :taco, through: :join_table, source: :model_trying_to_return
end
