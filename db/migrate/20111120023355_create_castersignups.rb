class CreateCastersignups < ActiveRecord::Migration
  def self.up
    create_table :castersignups do |t|
      t.string :username
      t.string :email
      t.string :youtube
      t.string :twitter
      t.string :facebook
      t.string :organization
      t.string :referrer
      t.string :fullname
      t.string :details

      t.timestamps
    end
  end

  def self.down
    drop_table :castersignups
  end
end
