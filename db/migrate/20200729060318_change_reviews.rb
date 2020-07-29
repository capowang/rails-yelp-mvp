class ChangeReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :name
    remove_column :reviews, :address
    remove_column :reviews, :number
    remove_column :reviews, :category
    add_column :reviews, :content, :string
    add_column :reviews, :rating, :integer

  end
end
