class Company < ApplicationRecord
  has_many :events, dependent: :destroy
end
