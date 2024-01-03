class CreateFollows < ActiveRecord::Migration[6.1]
  def change
    create_table :follows do |t|
      t.string :follower_id
      t.string :following_id 

      t.timestamps
    end
  end
end
