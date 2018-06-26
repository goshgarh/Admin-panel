class CohortsController < ApplicationController
     def index
      @cohorts = Cohort.all.order(:created_at)
    end
    
    def new
        @cohort = Cohort.new
    end
    
    def show
         @cohort = Cohort.find(params[:id])
    end
    
    def create
        Cohort.create(cohort_params)
        flash[:success]='You have successfully created cohort'
        redirect_to cohorts_path
    end
    
    def edit
        
        @cohort = Cohort.find(params[:id])
        
    end
    
    def update
        cohort = Cohort.find(params[:id])
        cohort.update(cohort_params)
         flash[:success]='You have successfully updated cohort'
        redirect_to cohorts_path
      
    end
    
    def destroy
        Cohort.destroy(params[:id])
         flash[:error]='Your cohort is deleted'
         render json: {message: 'cohort is destroyed!'}
#        redirect_to cohorts_path 
    end
    
    def cohort_params
#        will return something like this:
#        {name: '...', description: '....'}
        
        params.require(:cohort).permit(:name, :start_date, :end_date, :course_id, :description)
    end
    
end
