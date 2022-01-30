class RemoveImageIdFromTattoos < ActiveRecord::Migration[7.0]
  def change
    remove_column :tattoos, :image_id, :integer
  end
end
