class AddCategoryToCursos < ActiveRecord::Migration[5.2]
  def change
    add_column :cursos, :category, :string
  end
end
