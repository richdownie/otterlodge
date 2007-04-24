class CreateTournaments < ActiveRecord::Migration
  def self.up
    create_table :tournaments do |t|
       t.column :team_name, :string
       t.column :team_paid, :string
       t.column :player1, :string
       t.column :player1_paid, :string
       t.column :player2, :string
       t.column :player2_paid, :string
       t.column :player3, :string
       t.column :player3_paid, :string
       t.column :player4, :string
       t.column :player4_paid, :string
    end
    Tournament.create :team_name => "Caddy Shack", 
                      :team_paid => "Yes",
                      :player1 => "Joe Smith",
                      :player1_paid => "Yes",
                      :player2 => "Jim Crow",
                      :player2_paid => "Yes",
                      :player3 => "Tom Golisano",
                      :player3_paid => "Yes",
                      :player4 => "Mike Johnson",
                      :player4_paid => "Yes"
  end

  def self.down
    drop_table :tournaments
  end
end
