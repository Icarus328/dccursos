class AddAulaToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :aula, foreign_key: true
  end
end
