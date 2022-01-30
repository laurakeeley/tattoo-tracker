class CreateRelationships < ActiveRecord::Migration[7.0]
  def change
    create_table :relationships do |t|
      t.integer :artist_id
      t.integer :client_id

      t.timestamps
    end
  end
end
