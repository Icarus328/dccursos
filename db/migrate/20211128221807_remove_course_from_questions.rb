class RemoveCourseFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :course, :string
  end
end
