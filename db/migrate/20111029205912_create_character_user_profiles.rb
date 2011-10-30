class CreateCharacterUserProfiles < ActiveRecord::Migration
  def up 
    create_table :user_profiles do |t|
      t.integer :user_id
      t.integer :location_id
      t.integer :profile_views
      t.string  :username
      t.string  :byline
      t.string  :signature
      t.text    :profile
      t.string  :website
      t.string  :avatar
      t.string  :picture
      t.test    :custom

      t.timestamps
    end
  end
  def down
    drop_table :user_profiles
  end
end
