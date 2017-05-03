class CreatePopularInstitutes < ActiveRecord::Migration[5.0]
  def change
    create_table :popular_institutes do |t|
      t.string :name
      t.text :about_us
      t.string :estd
      t.string :phone
      t.string :email
      t.string :class_type
      t.string :courses
      t.text :address

      t.timestamps
    end
  end
end
