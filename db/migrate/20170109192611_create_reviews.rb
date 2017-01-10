class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.references :reviewable, polymorphic: true, index: true
      t.integer :rating, :limit => 5
      t.integer :user_id

      t.timestamps
    end
  end
end
