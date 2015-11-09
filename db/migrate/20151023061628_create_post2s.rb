class CreatePost2s < ActiveRecord::Migration
  def change
    create_table :post2s do |t|
      t.string :title1
      t.string :name

      t.timestamps null: false
    end
  end
end
