class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(allow_params)

    if @student.save
      flash[:success] = "Student created successfully"
      redirect_to students_path
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update_attributes(allow_params)
      flash[:success] = "Student updated successfully"
      redirect_to students_path
    else
      flash[:error] = "Something went wrong"
      render :edit
    end
  end


  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to students_path
  end


  private
  def allow_params
    params.require(:student).permit(:name,:age)
  end

end
