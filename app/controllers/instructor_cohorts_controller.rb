class InstructorCohortsController < ApplicationController
    
     def index
      @instructor_cohorts = InstructorCohort.all.order(:created_at)
      @instructors = Instructor.all.order(:created_at)
         
    end
    
    def new
        @instructor_cohort = InstructorCohort.new
        @instructor = Instructor.new
    end
    
    def show
         @instructor_cohort = InstructorCohort.find(params[:id])
    end
    
    def create
        InstructorCohort.create(instructor_cohort_params)
#        flash[:success]='You have successfully created instructor_cohort'
        redirect_to instructor_cohorts_path
    end
    
    def edit
        
#        @instructor_cohort = InstructorCohort.find(params[:id])
        
    end
    
    def update
        instructor_cohort = InstructorCohort.find(params[:id])
        instructor_cohort.update(instructor_cohort_params)
        redirect_to instructor_cohorts_path
    end
    
    def destroy
        InstructorCohort.destroy(params[:id])
#         flash[:error]='Your message is deleted'
        redirect_to instructor_cohorts_path 
    end
    
    def instructor_cohort_params
#        will return something like this:
#        {name: '...', description: '....'}
        
        params.require(:instructor_cohort).permit(:instructor_id, :cohort_id)
    end
    
end
