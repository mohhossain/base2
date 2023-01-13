class CreateReactions < ActiveRecord::Migration[6.1]
  def change
    create_table :reactions do |t|
      t.enum :emoji

      t.timestamps
    end
  end
end
