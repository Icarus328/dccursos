class RemoveAssociatedFromAnswers < ActiveRecord::Migration[5.2]
  def change
    remove_column :answers, :associated_question, :string
  end
end
