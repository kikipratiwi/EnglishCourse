class Teacher < ActiveRecord::Base
	belongs_to :lesson

	validates :name, presence: true, length: {minimum: 5}
	validates :gender, presence: true, length: {minimum: 4}
	validates :address, presence: true
	validates :lesson_id, presence: true
end
