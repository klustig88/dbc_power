class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :profile_image
      t.string :cohort_id
      t.integer :votes_left
      t.integer :current_score
      # for oauth need provider uid name oauth_token oauth_expires_at:datetime
      t.string  :provider
      t.integer :uid
      t.string  :name
      t.string  :oauth_token
      t.datetime  :oauth_expires_at
      t.timestamps
    end
  end
end
