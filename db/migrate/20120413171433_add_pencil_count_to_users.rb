class AddPencilCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pencil_count, :integer
  end
end
