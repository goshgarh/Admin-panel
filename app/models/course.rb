class Course < ApplicationRecord
    has_many :cohorts, dependent: :destroy
    has_many :instructor_cohorts, through: :cohorts
    has_many :instructors, through: :instructor_cohorts
    has_many :student_cohorts, through: :cohorts
    has_many :students, through: :student_cohorts
    
    validates :total_hours, numericality: { greater_than_or_equal_to: 0 }    
    
end
