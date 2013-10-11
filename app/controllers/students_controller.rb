class StudentsController < ApplicationController

  def show
    @student=Student.find(params[:id])

  end

  def edit

  end

  def update
   @student =Student.find(params[:id])
   @student.upvote
   @student.save
   redirect_to student_path(@student)
  end



end
