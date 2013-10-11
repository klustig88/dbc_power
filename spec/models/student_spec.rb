require 'spec_helper'

describe Student do
  before(:each) do
    @student = Student.create()
  end

  context "create a new student" do
    it "should start with 0 points" do
      expect(@student.student_points).to eq(0)
    end
  end

  context "execute upvote method" do
    it "should increase student_points by one" do
      expect {@student.upvote}.to change{@student.student_points}.by(1)
    end
  end

end
