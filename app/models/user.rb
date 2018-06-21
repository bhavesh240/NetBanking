class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #mount_uploader :documentimage, ImageUploader
  #mount_uploader :userimage, ImageUploader

  has_many :addresses
  has_one :localaddress
  has_one :permanentaddress

  accepts_nested_attributes_for :localaddress

  accepts_nested_attributes_for :permanentaddress

end
