class RemoveCursoaFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :cursoasociado, :string
  end
end
