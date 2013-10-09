class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :profile_image
      t.string :cohort_name
      t.integer :votes_left
      t.integer :current_score
      t.timestamps
    end
  end
end
