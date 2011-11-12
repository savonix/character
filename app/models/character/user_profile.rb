class Character::UserProfile < ActiveRecord::Base
  serialize :custom
  belongs_to :user, :class_name => Character.user_class.to_s
  #mount_uploader :picture, ImageUploader

end
