class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
       t.column :name, :string
       t.column :paid, :string
    end
    Team.create :name => "Sample Team", :paid => "paid"
  end

  def self.down
    drop_table :teams
  end
end
