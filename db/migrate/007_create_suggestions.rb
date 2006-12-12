class CreateSuggestions < ActiveRecord::Migration
  def self.up
    create_table :suggestions do |t|
       t.column :name, :string
       t.column :address, :string
       t.column :phone, :string
       t.column :email, :string
       t.column :comments, :text
     end   
       Suggestion.create :name => 'Taz', :address => '123 Smith Street', :phone => '555-1234', :email => 'email@gmail.com', :comments => 'This site is handy'

  end

  def self.down
    drop_table :suggestions
  end
end
