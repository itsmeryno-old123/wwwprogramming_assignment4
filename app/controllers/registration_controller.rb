class RegistrationController < ApplicationController
  def register
    student = Student.new do |s|
      s.name = params[:name]
      s.password = params[:password]
      s.studentnumber = params[:studentnumber]
    end 
    
    student.save
    
    @result
    
    if (student.errors.any?)
      print "There were errors validating the student\n"
      @errors = student.errors
      print "There were a total of " + student.errors.size.to_s() + " errors\n"
      
      keys = student.errors.keys
      print "Number of keys " + keys.size.to_s() + "\n"
      
      for key in 0..keys.length-1
        error_key = keys[key]
        print student.errors[error_key]
        print "\n"
      end
      
    else
      print "There were no errors validating registration\n"
    end
    
    redirect_to :controller => 'welcome', :action => 'index'
  end
end
