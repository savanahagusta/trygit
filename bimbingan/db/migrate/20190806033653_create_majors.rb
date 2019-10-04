class CreateMajors < ActiveRecord::Migration[5.2]
  def change
    create_table :majors do |t|
      t.integer :id_jur
      t.string :jurusan
      t.string :prodi

      t.timestamps
    end
  end
end
