class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :content
      t.string :associated_question

      t.timestamps
    end
  end
end
