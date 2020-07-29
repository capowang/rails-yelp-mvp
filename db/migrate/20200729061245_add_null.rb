class AddNull < ActiveRecord::Migration[6.0]
  def change
    change_column :reviews, :content, :string, null: false
    change_column :reviews, :rating, :integer, null: false
    change_column :restaurants, :category, :string, null: false
  end
end
