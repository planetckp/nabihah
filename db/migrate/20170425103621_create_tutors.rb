class CreateTutors < ActiveRecord::Migration[5.0]
  def change
    create_table :tutors do |t|
      t.string :name
      t.text :about_me
      t.string :phone
      t.string :email
      t.string :experience
      t.string :qualification
      t.string :courses
      t.text :address

      t.timestamps
    end
  end
end
