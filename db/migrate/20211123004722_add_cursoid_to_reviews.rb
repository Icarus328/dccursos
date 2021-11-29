class AddCursoidToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :curso, foreign_key: true
  end
end
