class InstructorsController < ApplicationController
    
     def index
      @instructors = Instructor.all.order(:created_at)
    end
    
    def new
        @instructor = Instructor.new
        @instructor_cohort = Instructor.new
    end
    
    def show
         @instructor = Instructor.find(params[:id])
    end
    
    def create
        Instructor.create(instructor_params)
        flash[:success]='You have successfully created instructor'
        redirect_to instructors_path
    end
    
    def edit
        
        @instructor = Instructor.find(params[:id])
        
    end
    
    def update
        instructor = Instructor.find(params[:id])
        instructor.update(instructor_params)
         flash[:success]='You have successfully updated instructor'
        redirect_to instructors_path
    end
    
    def destroy
        Instructor.destroy(params[:id])
         flash[:error]='Your instructor is deleted'
        render json: {message: 'student is destroyed!'}
        
#        render :edit -- it is edit.html.erb inside views/instructors
#        redirect_to instructors_path 
    end
    
    def instructor_params
#        will return something like this:
#        {name: '...', description: '....'}
        
        params.require(:instructor).permit(:first_name, :last_name, :DOB, :highest_education, :salary, :description)
    end
    
end
