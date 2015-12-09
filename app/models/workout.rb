#
class Workout < ActiveRecord::Base
  belongs_to :user
  validates :program, presence: true
  validates :exercise, presence: true
  validates :training_max, presence: true
end
