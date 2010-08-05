class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.belongs_to :user
      t.string :title
      t.text :body
      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
