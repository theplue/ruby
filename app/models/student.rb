class Student < ActiveRecord::Base
	has_many :sections
	has_many :professors, through: :sections
end
