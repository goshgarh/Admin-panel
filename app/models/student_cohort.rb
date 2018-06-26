class StudentCohort < ApplicationRecord
  belongs_to :student
  belongs_to :cohort
     validates :cohort_id, uniqueness: { scope: :student_id,
    message: "You should have unique Cohort for certain Student" }
end
