class CreateMurids < ActiveRecord::Migration[5.2]
  def change
    create_table :murids do |t|
      t.integer :nim
      t.string :nama
      t.string :kelas
      t.string :alamat
      t.integer :major_id
      t.integer :lecture_id

      t.timestamps
    end
  end
end
