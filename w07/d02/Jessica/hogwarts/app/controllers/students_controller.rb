class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @students = Student.new
  end

  def create
    @student = @Students.create(name: params[:name], img_url: params[:img_url], house_id: params[:house_id])
  end 

  def show
    @student = Student.find(params[:id])
  end

end