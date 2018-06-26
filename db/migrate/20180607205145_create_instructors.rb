class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.date :DOB
      t.string :highest_education
      t.integer :salary
      t.text :description

      t.timestamps
    end
  end
end
