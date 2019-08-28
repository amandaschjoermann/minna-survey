class CreatePoliticians < ActiveRecord::Migration[5.2]
  def change
    create_table :politicians do |t|
      t.string :name
      t.integer :age
      t.string :party
      t.string :image

      t.timestamps
    end
  end
end
