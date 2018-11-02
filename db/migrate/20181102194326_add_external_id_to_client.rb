class AddExternalIdToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :external_id, :string
  end
end
