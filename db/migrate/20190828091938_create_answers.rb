class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :weight
      t.integer :question_number
      t.references :dummy_user, foreign_key: true

      t.timestamps
    end
  end
end
