class Section < ActiveRecord::Base
  belongs_to :course
  belongs_to :professor
  has_and_belongs_to_many :students
end
