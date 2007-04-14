class CreateGolfers < ActiveRecord::Migration
  def self.up
    create_table :golfers do |t|
       t.column :first_name, :string
       t.column :last_name, :string
       t.column :phone, :string
       t.column :paid, :string
       t.column :team_id, :integer
    end
    Golfer.create :first_name => "Rich", :last_name => "Downie", :team_id => 1
    Golfer.create :first_name => "Jeff", :last_name => "Whitmire", :team_id => 1
    Golfer.create :first_name => "Freddie", :last_name => "Couples", :team_id => 1
    Golfer.create :first_name => "ChiChi", :last_name => "Rodriguez", :team_id => 1
  end

  def self.down
    drop_table :golfers
  end
end
