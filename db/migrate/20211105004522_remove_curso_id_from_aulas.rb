class RemoveCursoIdFromAulas < ActiveRecord::Migration[5.2]
  def change
    remove_column :aulas, :curso_id, :bigint
  end
end
