class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.references :employee, foreign_key: true
      t.references :client, foreign_key: true
      t.date :start_date
      t.boolean :current

      t.timestamps
    end
  end
end
