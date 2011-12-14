class CreateAdvertiserSignUps < ActiveRecord::Migration
  def self.up
    create_table :advertiser_sign_ups do |t|
      t.string :name
      t.string :email
      t.string :org
      t.string :message

      t.timestamps
    end
  end

  def self.down
    drop_table :advertiser_sign_ups
  end
end
