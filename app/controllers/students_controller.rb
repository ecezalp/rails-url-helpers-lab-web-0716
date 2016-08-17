class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]
  
  def index
    @students = Student.all
  end

  def show
  end

  def edit
    @student = Student.find(params[:id])
    @student.activate
    redirect_to student_path
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end