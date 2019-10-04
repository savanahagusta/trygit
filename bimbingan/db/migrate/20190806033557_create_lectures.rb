class CreateLectures < ActiveRecord::Migration[5.2]
  def change
    create_table :lectures do |t|
      t.integer :id_dos
      t.string :nama
      t.string :alamat

      t.timestamps
    end
  end
end
