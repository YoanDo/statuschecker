class Service < ApplicationRecord
  has_many :pings, dependent: :destroy
  validates :name, uniqueness: true, presence: true
end
