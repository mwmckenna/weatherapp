class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :password_digest
      t.string :location
      t.string :img
      t.string :reset_token

      t.timestamps
    end
  end
end
