class AddAssociatedcursoToAula < ActiveRecord::Migration[5.2]
  def change
    add_column :aulas, :associatedcurso, :string
  end
end
