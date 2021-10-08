class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos do |t|
      t.string :name
      t.text :description
      t.string :duration
      t.string :teacher
      t.integer :price

      t.timestamps
    end
  end
end
