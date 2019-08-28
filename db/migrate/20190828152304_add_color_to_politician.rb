class AddColorToPolitician < ActiveRecord::Migration[5.2]
  def change
    add_column :politicians, :party_color, :string
  end
end
