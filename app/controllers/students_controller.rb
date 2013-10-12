class StudentsController < ApplicationController

  def show
    @student=Student.find(params[:id])

  end

  def edit

  end

  def update
    p params
    p current_user
    p current_user.votes_left
    if current_user
      if current_user.votes_left == 0
        # return "no_more_votes"
      else   
        p @student =Student.find(params[:id])
        p current_user.remove_vote
        p @comment = Comment.create(student_id: params[:id], body: params[:body])
        p @student.upvote
        p @student.save

          render :json => {:comment => @comment.body}
        # return "your message has been sent"
        
      end
    end  
  
  end

  def comment_vote
    render :_up_vote_comment, layout: false
  end


end
