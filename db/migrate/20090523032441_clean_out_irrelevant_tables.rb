class CleanOutIrrelevantTables < ActiveRecord::Migration
  def self.up
    drop_table :friends
    drop_table :golfers
    drop_table :teams
    drop_table :tournaments
  end

  def self.down
    raise IrreversibleMigration
  end
end
