class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :content
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
