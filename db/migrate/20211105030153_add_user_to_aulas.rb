class AddUserToAulas < ActiveRecord::Migration[5.2]
  def change
    add_reference :aulas, :user, foreign_key: true
  end
end
