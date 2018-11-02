class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :backend
      t.string :frontend
      t.boolean :current
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
