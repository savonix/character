class User < ActiveRecord::Base
  establish_connection "#{Rails.env}_users"

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :vehicles
  has_one :profile, :class_name => 'Character::UserProfile'
  has_many :posts, :class_name => "Forem::Post"

  def forem_admin?
    self.email == 'albert.lash@gmail.com'
  end

  def to_s
    email.split('@').first
  end

  def byline
    to_s
  end
end
