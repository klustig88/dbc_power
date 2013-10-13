require 'spec_helper'

describe StudentsController do
  
  describe "Get Index" do
    before do
     
      @students=Student.all
    end  

    it "assigns @students" do
      get :index
      expect(assigns(:students)).to eq(@students)
    end

    it "assigns @top_10" do
      get :index
      expect(assigns(:top_10)).to eq(@students.sort{|s2,s1| s1.student_points <=> s2.student_points}.first(10))
    end  

    it "renders up an index page" do
      get :index
      expect(response).to render_template("index")
    end  
  end

  describe "Get Show" do
    before do
      @student = Student.create()
    end  

    it "assigns @student" do
      get :show, id: @student.id
      expect(assigns(:student)).to eq(@student)
    end  

    it "assigns @comments" do
      get :show, id: @student.id
      expect(assigns(:comments)).to eq(@student.comments.reverse_order)
    end  

  end

  describe "Get update" do

    describe "unhappy path" do

      it "returns nothing if there is no current user" do
        get :update
        expect(response).to render_template("update")
      end

      it "it renders dude buy some votes" do
       user = User.create(votes_left: 0)
       controller.stub(:current_user).and_return(user)
       expected = {:comment => "Dude buy some votes!"}.to_json
       get :update
       response.body.should == expected
     end 


     it "returns make it bigger" do
       user = User.create(votes_left: 1)
       controller.stub(:current_user).and_return(user)
       student=Student.create()
       expected= {:comment => "Make it bigger!"}.to_json
       body="too short"
       get :update, id: student.id, body: body
       response.body.should == expected
     end 

   end  

   describe "happy path" do

    before do
      user = User.create(votes_left: 1)
      current_user= controller.stub(:current_user).and_return(user)
    end 

    it "it deducts a vote from the voter" do
      user = User.create(votes_left: 1)
      controller.stub(:current_user).and_return(user)
      student=Student.create()
      body="long enough for a save"
      get :update, id: student.id, body: body
      expect(user.votes_left).to eq(0)
    end  

    it "it gives a point" do 
     student=Student.create()
     body="long enough for a save"
     get :update, id: student.id, body: body
     expect(student.upvote).to eq(1)
   end 

   it "it renders the comment" do 
     student=Student.create()
     body="long enough for a save"
     expected= {:comment => body}.to_json
     get :update, id: student.id, body: body
     response.body.should == expected
   end 

 end

end  





end  
