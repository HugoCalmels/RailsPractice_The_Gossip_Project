class CreateGossips < ActiveRecord::Migration[6.1]
  def change
    create_table :gossips do |t|
      t.string :title
      t.text :content
      t.belongs_to :user, index: true
      t.belongs_to :like, index: true
      t.timestamps
    end
  end
end
