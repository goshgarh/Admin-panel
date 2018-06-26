class InstructorCohort < ApplicationRecord
  belongs_to :instructor
  belongs_to :cohort
     validates :cohort_id, uniqueness: { scope: :instructor_id,
    message: "You should have unique Cohort for certain Instructor" }
end
