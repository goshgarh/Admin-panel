class StudentCohortsController < ApplicationController
    
     def index
          @student_cohorts = StudentCohort.all.order(:created_at)
          @students = Student.all.order(:created_at)
         
    end
    
    def new
        @student = Student.new
        @student_cohort = StudentCohort.new
    end
    
    def show
         @student_cohort = StudentCohort.find(params[:id])
    end
    
    def create
        StudentCohort.create(student_cohort_params)
        flash[:success]='You have successfully created Student-Cohort'
        redirect_to student_cohorts_path
    end
    
    def edit
        
#        @student_cohort = StudentCohort.find(params[:id])
        
    end
    
    def update
        student_cohort = StudentCohort.find(params[:id])
        student_cohort.update(student_cohort_params)
         flash[:success]='You have successfully updated Student-Cohort'
        redirect_to student_cohorts_path
    end
    
    def destroy
        StudentCohort.destroy(params[:id])
         flash[:error]='Your Student-Cohort is deleted'
        redirect_to student_cohorts_path 
    end
    
    def student_cohort_params
#        will return something like this:
#        {name: '...', description: '....'}
        
       
        params.require(:student_cohort).permit(:student_id, :cohort_id)
    end
end
