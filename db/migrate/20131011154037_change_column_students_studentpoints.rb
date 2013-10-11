class ChangeColumnStudentsStudentpoints < ActiveRecord::Migration
  def change
    execute 'ALTER TABLE students ALTER student_points TYPE integer USING student_points::int'
  end
end
