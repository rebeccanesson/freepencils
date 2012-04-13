class AddDifficultyLevelToUsers < ActiveRecord::Migration
  def change
    add_column :users, :difficulty_level, :integer
  end
end
