class WelcomeController < ApplicationController
  def index
    @campuses = Campus::UJ_CAMPUSES
    @student = Student.new
  end
end
