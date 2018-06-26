
class StudentsController < ApplicationController
     def index
      @students = Student.all.order(:created_at)
    end
    
    def new
        @student = Student.new
    end
    
    def show
         @student = Student.find(params[:id])
    end
    
    def create
        Student.create(student_params)
        flash[:success]='You have successfully created Student'
        redirect_to students_path
    end
    
    def edit
        
        @student = Student.find(params[:id])
        
    end
    
    def update
        student = Student.find(params[:id])
        student.update(student_params)
         flash[:success]='You have successfully updated Student'
        redirect_to students_path
    end
    
    def destroy
        Student.destroy(params[:id])
         flash[:error]='Your Student is deleted'
       render json: {message: 'student is destroyed!'}
        
#        render :edit -- it is edit.html.erb inside views/students
    end
    
    def student_params
#        will return something like this:
#        {name: '...', description: '....'}
        
        params.require(:student).permit(:first_name, :last_name, :DOB, :highest_education, :description)
    end
end
