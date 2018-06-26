class CoursesController < ApplicationController
    
     def index
      @courses = Course.all.order(:created_at)
    end
    
    def new
        @course = Course.new
    end
    
    def show
         @course = Course.find(params[:id])
    end
    
    def create
        Course.create(course_params)
        flash[:success]='You have successfully created course'
        redirect_to courses_path
    end
    
    def edit
        
        @course = Course.find(params[:id])
        
    end
    
    def update
        course = Course.find(params[:id])
        course.update(course_params)
         flash[:success]='You have successfully updated course'
        redirect_to courses_path
    end
    
    def destroy
        Course.destroy(params[:id])
         flash[:error]='Your Course is deleted'
         render json: {message: 'course is destroyed!'}
#        redirect_to courses_path 
    end
    
    def course_params
#        will return something like this:
#        {name: '...', description: '....'}
        
        params.require(:course).permit(:name, :total_hours, :description)
    end
    
end
