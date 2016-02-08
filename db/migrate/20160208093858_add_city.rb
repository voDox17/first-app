class AddCity < ActiveRecord::Migration
  def change
    add_column :articles, :city, :text
    add_column :articles, :country, :text
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
    
  end
end
