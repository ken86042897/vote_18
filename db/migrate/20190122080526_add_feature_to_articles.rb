class AddFeatureToArticles < ActiveRecord::Migration[5.2]
  def change
  	add_column :articles, :feature, :string
  end
end
