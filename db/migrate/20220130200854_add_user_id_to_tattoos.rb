class AddUserIdToTattoos < ActiveRecord::Migration[7.0]
  def change
    add_column :tattoos, :user_id, :integer
  end
end
