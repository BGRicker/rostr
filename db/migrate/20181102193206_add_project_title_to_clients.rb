class AddProjectTitleToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :project, :string
  end
end
