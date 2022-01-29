class CreateTattoos < ActiveRecord::Migration[7.0]
  def change
    create_table :tattoos do |t|
      t.decimal :price, precision: 9, scale: 2
      t.time :time
      t.integer :image_id

      t.timestamps
    end
  end
end
