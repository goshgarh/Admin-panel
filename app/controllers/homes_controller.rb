class HomesController < ApplicationController
    def index
    @instructors =Instructor.all
    @students =Student.all
    @cohorts =Cohort.all
    @courses =Course.all
    
    end
    
end
