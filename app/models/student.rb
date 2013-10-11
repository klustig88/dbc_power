class Student < ActiveRecord::Base
  has_many :comments
  include Gravtastic
  gravtastic

   before_save :default_value

    def upvote
        self.student_points += 1
    end


    private

    def default_value
      self.student_points ||= 0
    end

end

