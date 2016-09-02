class Report < ActiveRecord::Base
	belongs_to :lesson
	belongs_to :student

	validates :lesson_id, presence: true
	validates :score, presence: true, length: {minimum: 2}

	def self.get_avg
		self.select("lesson_id, avg(score) as final_score").group("lesson_id")
	end
end
