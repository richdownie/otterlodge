class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
       t.column :name, :string
    end
      Event.create :name => "10/31 Halloween Party"
      Event.create :name => "11/26 Bills vs. Dolphins"
  end

  def self.down
    drop_table :events
  end
end
