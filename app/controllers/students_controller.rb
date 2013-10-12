class StudentsController < ApplicationController

  def index
    @students = Student.all
    @top_10 = @students.sort{|s2,s1| s1.student_points <=> s2.student_points}.first(10)
  end


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
      if current_user.votes_left <= 0
          render :json => {:comment => "Dude buy some votes!"}
      else   
        @student =Student.find(params[:id])
        current_user.remove_vote
        @comment = Comment.create(student_id: params[:id], body: params[:body])
       p @comment.save 
        if @comment.save == false
          return render :json => {:comment => "Make it bigger!"}
        else
          @student.upvote
          @student.save
          render :json => {:comment => @comment.body}           
        end  

        # return "your message has been sent"
        
      end
    end  
  
  end

  def comment_vote
    render :_up_vote_comment, layout: false
  end


end
