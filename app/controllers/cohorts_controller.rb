class CohortsController < ApplicationController
  def show
    p params

    @students= Student.find_by_cohort_id(params[:id])
    @cohort_name= @student.first.cohort_name

  end  
end  
