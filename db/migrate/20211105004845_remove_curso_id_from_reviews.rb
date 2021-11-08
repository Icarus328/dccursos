class RemoveCursoIdFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :curso_id, :bigint
  end
end
