class Service < ApplicationRecord
  has_many :pings, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :web_api, uniqueness: true, presence: true
end
