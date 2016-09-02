class Lesson < ActiveRecord::Base
	has_many :reports, :dependent  => :delete_all
	has_many :students, through: :reports
	
	has_many :teacher

	validates :subject, presence: true, length: {minimum: 5}
end
