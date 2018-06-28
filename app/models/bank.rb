class Bank < ApplicationRecord
  has_many :users, dependent: :destroy
end
