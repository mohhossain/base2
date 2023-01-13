class CreateReactionAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :reaction_answers do |t|
      t.references :answer, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :reaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
