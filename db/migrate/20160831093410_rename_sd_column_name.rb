class RenameSdColumnName < ActiveRecord::Migration
  def change
  	rename_column :rooms, :qty, :capacity
  end
end
