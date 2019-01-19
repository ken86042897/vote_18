class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
    t.string :title
    t.string :date
    t.string :description
    t.string :body
      t.timestamps
    end
  end
end
