class CreateClases < ActiveRecord::Migration[5.2]
  def change
    create_table :clases do |t|
      t.integer :name
      t.string :duration
      t.string :theme
      t.date :date
      t.integer :number
      t.string :associated_video

      t.timestamps
    end
  end
end
