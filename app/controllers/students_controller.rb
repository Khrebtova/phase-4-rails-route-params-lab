class StudentsController < ApplicationController

  def index
    
    students = Student.where("first_name LIKE ? OR last_name LIKE ?", "%#{params[:name]}%", "%#{params[:name]}%")
      
    render json: students
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end

 

end
