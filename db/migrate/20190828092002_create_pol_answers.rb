class CreatePolAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :pol_answers do |t|
      t.integer :weight
      t.integer :question_number
      t.references :politician, foreign_key: true

      t.timestamps
    end
  end
end
