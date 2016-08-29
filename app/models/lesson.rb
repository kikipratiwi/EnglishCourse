class Lesson < ActiveRecord::Base
	has_many :reports
	has_many :students, through: :reports
	
	has_many :teacher
end
