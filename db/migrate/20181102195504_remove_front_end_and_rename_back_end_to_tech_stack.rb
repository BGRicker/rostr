class RemoveFrontEndAndRenameBackEndToTechStack < ActiveRecord::Migration[5.2]
  def change
    remove_column :clients, :frontend
    rename_column :clients, :backend, :skills
  end
end
