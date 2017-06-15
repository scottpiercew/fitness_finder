class Event < ApplicationRecord
  belongs_to :company
  validates :name, presence: true
  validates :event_type, presence: true
end
