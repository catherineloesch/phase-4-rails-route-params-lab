class StudentsController < ApplicationController

  def index
      if params.keys.include?("name")
        students = Student.all.filter {|student| student.first_name.downcase == params[:name] || student.last_name.downcase == params[:name]}
      else
        students = Student.all
      end
      render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end