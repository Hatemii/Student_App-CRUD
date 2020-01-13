class EnrollmentsController < ApplicationController
  def index
  end

  def new
    @enroll = Enrollment.new
  end

  def create
    @enroll = Enrollment.create(allow_params)

    if @enroll.save
      redirect_to student_path
    else
      render :new
    end
  end


  def destroy
    @enroll.find(params[:id])
    @student = @enroll.student
    @enroll.destroy
    redirect_to student_path
  end

  private
  def allow_params
    params.require(:enroll).permit(:student_id,course_id)
  end

end
