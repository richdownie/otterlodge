class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
       t.column :name, :string
       t.column :date, :timestamp
    end
      Event.create :name => "Halloween Party", :date => '12/12/2007'
      Event.create :name => "Bills vs. Dolphins", :date => '12/12/2007'
  end

  def self.down
    drop_table :events
  end
end
