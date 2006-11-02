class CreateFriends < ActiveRecord::Migration
  def self.up
    create_table :friends do |t|
       t.column :name, :string
       t.column :email, :string
    end
  end

  def self.down
    drop_table :friends
  end
end
