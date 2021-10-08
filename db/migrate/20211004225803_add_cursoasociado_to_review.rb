class AddCursoasociadoToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :cursoasociado, :string
  end
end
