class CreateAnswerOptions < ActiveRecord::Migration
  def change
    create_table :answer_options do |t|
      t.string :text
      t.integer :question_id
      t.integer :position

      t.timestamps
    end
  end
end
