class CreateUserLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :user_likes do |t|
      t.integer :user_id
      t.integer :like_id
    end
  end
end
