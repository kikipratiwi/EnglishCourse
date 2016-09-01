class RenameColumnNameScoreToScore < ActiveRecord::Migration
  def change
  	rename_column :reports, :value, :score
  end
end
