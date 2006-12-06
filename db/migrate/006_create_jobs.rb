class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.column :position, :string
      t.column :description, :text
    end
      Job.create :position => 'Chef', :description => 'Line Cook'
  end

  def self.down
    drop_table :jobs
  end
end
