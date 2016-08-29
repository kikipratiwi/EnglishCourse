class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
	    t.belongs_to :student, index: true
			t.belongs_to :lesson, index: true
			t.integer :value

      t.timestamps null: false
    end
  end
end
