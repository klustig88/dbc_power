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

    it "returns nothing if there is no current user" do
      get :update
      expect(response).to render_template("update")
    end
  
  end  

  



end  
