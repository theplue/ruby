class Section < ActiveRecord::Base
	belongs_to :course
	belongs_to :professor
	belongs_to :students
	validates :number, length: { minimum: 3, maximum: 4 }
	validates :course, presence: true
	validates :professor, presence: true
	validates :classTime, presence: true
	validates :location, length: {minimum: 5, maximum: 20}
end
