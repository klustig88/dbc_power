class CohortsController < ApplicationController
  def show

    @students= Student.all.where(cohort_id: params[:id])
    p @students
    @cohort_name= @students.first.cohort_name
    p @cohort_name
  end  
end  
