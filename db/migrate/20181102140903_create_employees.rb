class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :role
      t.string :location
      t.boolean :full_time

      t.timestamps
    end
  end
end
