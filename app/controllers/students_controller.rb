class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.new(params[:student])
    student.save
<<<<<<< HEAD
=======
    redirect_to @student
>>>>>>> 1ba46697bf6b80dcaeaf181b63edce1160f07ebe
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    raise
    @student.update_attributes(params[:student])
    redirect_to @student
  end

  def search
    @students = Student.where(name: params[:query])
  end
end