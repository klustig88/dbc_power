class StudentsController < ApplicationController

  def index
    @students = Student.all
    @top_10 = @students.sort{|s2,s1| s1.student_points <=> s2.student_points}.first(10)
    
  end


  def show
    @student=Student.find(params[:id])
    @comments= @student.comments.reverse_order
  end


  def update
    

    if current_user
      if current_user.votes_left <= 0
          render :json => {:comment => "Dude buy some votes!"}
      else   
        @student =Student.find(params[:id])
        current_user.remove_vote
        @comment = Comment.create(student_id: params[:id], body: params[:body])
        @comment.save 
        if @comment.save == false
          return render :json => {:comment => "Make it bigger!"}
        else
          @student.upvote
          @student.save
          render :json => {:comment => @comment.body}           
        end  
      end
    end    
  end

end
