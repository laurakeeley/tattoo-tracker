class RemoveTattooIdFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :tatto_id
  end
end
