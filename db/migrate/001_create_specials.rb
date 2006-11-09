class CreateSpecials < ActiveRecord::Migration
  def self.up
    create_table :specials do |t|
       t.column :day, :string
       t.column :lunch, :string
       t.column :dinner, :string
    end
    Special.create :day => "Monday", :lunch => "Hamburger...$5.95", :dinner => "Cheeseburger...$6.35"
    Special.create :day => "Tuesday", :lunch => "Hamburger...$5.95", :dinner => "Cheeseburger...$6.35"
    Special.create :day => "Wednesday", :lunch => "Hamburger...$5.95", :dinner => "Cheeseburger...$6.35"
    Special.create :day => "Thursday", :lunch => "Hamburger...$5.95", :dinner => "Cheeseburger...$6.35"
    Special.create :day => "Friday", :lunch => "Hamburger...$5.95", :dinner => "Cheeseburger...$6.35"
    Special.create :day => "Saturday", :lunch => "Hamburger...$5.95", :dinner => "Cheeseburger...$6.35"
    Special.create :day => "Sunday", :lunch => "Hamburger...$5.95", :dinner => "Cheeseburger...$6.35"
  end

  def self.down
    drop_table :specials
  end
end
