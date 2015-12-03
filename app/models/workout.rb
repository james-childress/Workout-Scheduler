class Workout < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  validates :program, presence: true
  validates :exercise, presence: true
  validates :training_max, presence: true
end
