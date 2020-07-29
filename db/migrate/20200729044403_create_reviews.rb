class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :address
      t.string :number
      t.string :category
      t.references :restaurant, null: false, foreign_key: true
      t.timestamps
    end
  end
end
