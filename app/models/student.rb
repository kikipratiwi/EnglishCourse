class Student < ActiveRecord::Base
	belongs_to :level
	belongs_to :room

	has_many :reports, dependent: :destroy
	has_many :lessons, through: :reports

	def check_capacity
		user_room = :title
		r = Room.capacity
	end
end
