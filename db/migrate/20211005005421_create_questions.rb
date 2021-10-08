class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :description
      t.string :course
      t.date :publication_date

      t.timestamps
    end
  end
end
