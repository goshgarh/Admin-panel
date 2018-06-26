class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.date :DOB
      t.string :highest_education
      t.text :description

      t.timestamps
    end
  end
end
