class CreateSchedules < ActiveRecord::Migration
  def self.up
    create_table :schedules do |t|
       t.column :range, :string
       t.column :sunday, :string
       t.column :monday, :string
       t.column :tuesday, :string
       t.column :wednesday, :string
       t.column :thursday, :string
       t.column :friday, :string
       t.column :saturday, :string
    end
  end

  def self.down
    drop_table :schedules
  end
end
