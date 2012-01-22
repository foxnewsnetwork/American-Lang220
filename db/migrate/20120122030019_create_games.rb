class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.string :email
      t.string :contact_name
      t.string :game_name
      t.string :url
      t.integer :user_amount

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
