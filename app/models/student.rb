class Student < ApplicationRecord
    has_many :student_cohorts, dependent: :destroy
    has_many :cohorts, through: :student_cohorts
    has_many :courses, through: :cohorts
    has_many :instructor_cohorts, through: :cohorts
    has_many :instructors, through: :instructor_cohorts
    
   
     def full_name
        "#{first_name} #{last_name}" 
    end
end

