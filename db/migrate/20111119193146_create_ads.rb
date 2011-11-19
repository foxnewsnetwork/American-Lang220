class CreateAds < ActiveRecord::Migration
  def self.up
    create_table :ads do |t|
      t.integer :ad_id
      t.integer :views # number of views
      t.integer :duration # seconds the ad was shown
      t.integer :clicks # number of times the ad has been clicked

      t.timestamps
    end
  end

  def self.down
    drop_table :ads
  end
end
