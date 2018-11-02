class AddSponsorToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :sponsor, :string
  end
end
