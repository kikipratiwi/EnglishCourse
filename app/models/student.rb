class Student < ActiveRecord::Base
	belongs_to :level
	belongs_to :room

	has_many :reports, :dependent => :delete_all
	has_many :lessons, through: :reports

	validates :name, presence: true, length: {minimum: 5}
	validates :gender, presence: true, length: {minimum: 4}
	validates :address, presence: true
	validates :level, presence: true
	validates :room,  presence: true

	def check_capacity
		user_room = :title
		r = Room.capacity
	end


	def get_avg
		self.reports.select("lesson_id, avg(score) as final_score").group("lesson_id")
	end

	def get_lesson(id)
		self.reports.where(lesson_id: id)
	end


end
