class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :reviewable_id
      t.string :reviewable_type
      t.integer, :rating, :limit => 5

      t.timestamps
    end
  end
end
