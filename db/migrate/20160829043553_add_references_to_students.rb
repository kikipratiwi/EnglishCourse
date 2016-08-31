class AddReferencesToStudents < ActiveRecord::Migration
  def change
  	add_reference :students, :level, index: true, foreign_key: true
	add_reference :students, :room, index: true, foreign_key: true
  end
end
