class Company < ApplicationRecord
  has_many :events, dependent: :destroy
  validates :name, presence: true
  validates :company_type, presence: true
end
