class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :uid
      t.text :name
      t.string :student_points
      t.text :email
      t.text :bio
      t.integer :cohort_id
      t.string :cohort_name
      t.string :github
      t.string :quora
      t.string :twitter
      t.string :facebook
      t.text :linked_in
      t.text :about
    end
  end
end
