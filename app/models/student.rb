class Student < ActiveRecord::Base
	belongs_to :level
	belongs_to :room

	has_many :reports
	has_many :lessons, through: :reports
end
