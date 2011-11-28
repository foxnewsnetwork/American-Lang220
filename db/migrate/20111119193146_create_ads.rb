class CreateAds < ActiveRecord::Migration
  def self.up
    create_table :ads do |t|
      t.string :name # title of the ad
      t.integer :corporation_id # id of the owner

      t.timestamps
    end
  end

  def self.down
    drop_table :ads
  end
end
