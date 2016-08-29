class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :gender
      t.date :birthday
      t.text :address

      t.timestamps null: false
    end
  end
end
