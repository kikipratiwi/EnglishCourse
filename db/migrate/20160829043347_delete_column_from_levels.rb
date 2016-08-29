class DeleteColumnFromLevels < ActiveRecord::Migration
  def change
  	remove_column :levels, :student_id
  end
end
