class Professor < ActiveRecord::Base
  has_many :sections
  has_many :students, through: :sections
end
