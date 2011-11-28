class CreateCorporations < ActiveRecord::Migration
  def self.up
    create_table :corporations do |t|
      t.string :name

      t.timestamps
    end
    add_index :corporations, :name
  end

  def self.down
    drop_table :corporations
  end
end
