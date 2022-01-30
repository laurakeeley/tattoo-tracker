class AddTattooIdToImages < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :tattoo_id, :integer
  end
end
