class CreateSpecials < ActiveRecord::Migration
  def self.up
    create_table :specials do |t|
       t.column :sort, :integer
       t.column :name, :string
       t.column :price, :decimal, :precision => 8, :default => 0, :scale => 2
       t.column :description, :string
    end
    Special.create :name => "Hamburger", :price => 4
    Special.create :name => "Turkey Club", :price => 5
    Special.create :name => "Chicken Soup", :price => 3
  end

  def self.down
    drop_table :specials
  end
end
