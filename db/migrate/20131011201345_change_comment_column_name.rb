class ChangeCommentColumnName < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.rename :user_id, :student_id
    end
  end
end
