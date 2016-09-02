class Level < ActiveRecord::Base
	has_many :students
	
	validates :name, presence: true, length: {minimum: 5}
end
