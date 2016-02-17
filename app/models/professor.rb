class Professor < ActiveRecord::Base
	has_many :sections
	has_many :students, through: :sections
	validates :fname, length: { minimum: 2, maximum: 30 }
	validates :lname, presence: true
	validates :office, presence: true
	validates :department, presence: true
end
