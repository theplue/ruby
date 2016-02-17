class Student < ActiveRecord::Base
	has_many :sections
	has_many :professors, through: :sections
	validates :fname, length: { minimum: 2, maximum: 30 }
	validates :lname, presence: true
	validates :year, presence: true


end
