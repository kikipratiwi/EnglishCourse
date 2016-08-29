class AddReferencesToTeachers < ActiveRecord::Migration
  def change 
    add_reference :teachers, :lesson, index: true, foreign_key: true
	end
end
