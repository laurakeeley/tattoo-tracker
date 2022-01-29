class ChangeUserTypeToClassification < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :type, :classification
  end
end
