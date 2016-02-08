class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :topic
      t.text :description
    end
  end
end
