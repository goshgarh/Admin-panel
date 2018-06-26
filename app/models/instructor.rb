class Instructor < ApplicationRecord
    has_many :instructor_cohorts, dependent: :destroy
    has_many :cohorts, through: :instructor_cohorts
    has_many :courses, through: :cohorts
    has_many :student_cohorts, through: :cohorts
    has_many :students, through: :student_cohorts
    
    validates :salary, numericality: { greater_than_or_equal_to: 0 }
    
    def full_name
        "#{first_name} #{last_name}" 
    end
end
