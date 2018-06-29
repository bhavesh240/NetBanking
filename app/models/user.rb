class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:timeoutable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable

  mount_uploader :documentimage, ImageUploader
  mount_uploader :userimage, ImageUploader

  has_many :addresses , dependent: :destroy
  has_one :localaddress,dependent: :destroy
  has_one :permanentaddress,dependent: :destroy

  accepts_nested_attributes_for :localaddress
  accepts_nested_attributes_for :permanentaddress

  has_one :account, dependent: :destroy

  #belongs_to :bank, dependent: :destroy

  after_create :assign_default_role, :generate_account

  has_and_belongs_to_many :beneficiaries, dependent: :destroy

  has_many :transactions, dependent: :destroy


  def assign_default_role
    self.add_role(:user) if self.roles.blank?
  end

  def generate_account
    Account.create!(account_number: (SecureRandom.random_number(9e11) + 1e11).to_i, user_id: self.id)
  end

end

