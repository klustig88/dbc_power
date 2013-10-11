class StudentsController < ApplicationController

  def show
    @student=Student.find(params[:id])

  end

  def edit

  end

  def update
    if current_user
      if current_user.votes_left == 0
        # return "no_more_votes"
      else   
        @student =Student.find(params[:id])
        current_user.remove_vote
        @comment = Comment.create(student_id: params[:id], body: params[:body])
        @student.upvote
        @student.save
        content_type :json
          {}
        # return "your message has been sent"
        
      end
    end  
    redirect_to student_path(@student)
  end

  def comment_vote
    render :_up_vote_comment, layout: false
  end


end
