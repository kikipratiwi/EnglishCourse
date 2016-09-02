class Room < ActiveRecord::Base
	has_many :students

	validates :name, presence: true, length: {minimum: 5}

	def validate(record)
	    unless record.room_id.starts_with? 'X'
	      record.errors[:room_id] << 'Need a name starting with X please!'
	    end
	end
end
