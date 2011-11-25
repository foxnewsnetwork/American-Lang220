class CreateAdstats < ActiveRecord::Migration
  def self.up
    create_table :adstats do |t|
      t.integer :ad_id
      t.integer :user_id
      t.integer :views, :default => 0
      # t.integer :duration, :default => 0
      t.integer :clicks, :default => 0
      t.integer :closes, :default => 0

      t.timestamps
    end
    
    add_index :adstats, :ad_id
		add_index :adstats, :user_id
		add_index :adstats, [:ad_id , :user_id], :unique => true
  end
  
  

  def self.down
    drop_table :adstats
  end
end
