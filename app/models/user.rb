class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable

  mount_uploader :documentimage, ImageUploader
  mount_uploader :userimage, ImageUploader

  has_many :addresses , dependent: :destroy
  has_one :localaddress,dependent: :destroy
  has_one :permanentaddress,dependent: :destroy

  accepts_nested_attributes_for :localaddress

  accepts_nested_attributes_for :permanentaddress

  after_create :assign_default_role

#  after_create :send_welcome_mail, dependent: :destroy

end

  def assign_default_role
    self.add_role(:user) if self.roles.blank?
  end