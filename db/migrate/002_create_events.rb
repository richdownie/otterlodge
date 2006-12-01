class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
       t.column :name, :string
       t.column :date, :timestamp
    end
      Event.create :name => "Halloween Party"
      Event.create :name => "Bills vs. Dolphins"
  end

  def self.down
    drop_table :events
  end
end
