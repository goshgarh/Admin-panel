class Cohort < ApplicationRecord
  belongs_to :course
  has_many :student_cohorts, dependent: :destroy
  has_many :students, through: :student_cohorts
  has_many :instructor_cohorts, dependent: :destroy
  has_many :instructors, through: :instructor_cohorts
end
