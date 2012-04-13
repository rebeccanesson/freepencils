class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.integer :answer_index
      t.string :difficulty

      t.timestamps
    end
    add_index :questions, :difficulty
  end
end
