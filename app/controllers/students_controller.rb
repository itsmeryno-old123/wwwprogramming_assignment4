class StudentsController < ApplicationController
  def new
    @student = Student.new
    @campuses = Campus::UJ_CAMPUSES
  end
  
  def index
    #do the same thing as the new method here
    new()
    render 'new'
  end
  
  def create
    @student = Student.new(params[:student])
    @campuses = Campus::UJ_CAMPUSES
    
    if (@student.save)
      print "Student registration saved successfully"
      render 'success'
    else
      print "Unable to save student registration"
      render 'new'
    end
  end
end
