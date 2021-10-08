class CreateAulas < ActiveRecord::Migration[5.2]
  def change
    create_table :aulas do |t|
      t.string :name
      t.integer :duration
      t.string :theme
      t.date :date
      t.integer :number
      t.string :associated_video

      t.timestamps
    end
  end
end
