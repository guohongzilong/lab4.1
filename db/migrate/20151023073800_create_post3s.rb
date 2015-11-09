class CreatePost3s < ActiveRecord::Migration
  def change
    create_table :post3s do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
