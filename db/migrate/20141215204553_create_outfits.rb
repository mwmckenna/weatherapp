class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string :title
      t.integer :temp_min
      t.integer :temp_max
      t.text :description
      t.string :api_url
      t.float :star_rating
      t.integer :user_id
      t.string :img_url
      t.string :tag

      t.timestamps
    end
  end
end
