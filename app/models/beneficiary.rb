class Beneficiary < ApplicationRecord
   has_and_belongs_to_many :users, dependent: :destroy
end 
