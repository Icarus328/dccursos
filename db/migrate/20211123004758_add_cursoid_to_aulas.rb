class AddCursoidToAulas < ActiveRecord::Migration[5.2]
  def change
    add_reference :aulas, :curso, foreign_key: true
  end
end
