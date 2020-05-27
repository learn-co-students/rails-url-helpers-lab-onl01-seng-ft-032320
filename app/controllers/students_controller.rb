class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
  end

 def activate 
    if @student.active
      @student.toggle!(:active)
    else
      @student.toggle!(:active) 
    end
    redirect_to action: 'show'
 end

  private

    def set_student
      @student = Student.find_by_id(params[:id])
    end
end