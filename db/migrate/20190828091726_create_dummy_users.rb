class CreateDummyUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :dummy_users do |t|

      t.timestamps
    end
  end
end
