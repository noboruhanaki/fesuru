class CreateFesus < ActiveRecord::Migration[5.1]
  def change
    create_table :fesus do |t|
      t.string :title
      t.string :place
      t.string :photo
      t.string :category
      t.date :date

      t.timestamps
    end
  end
end
