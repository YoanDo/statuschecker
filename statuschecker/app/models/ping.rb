class Ping < ApplicationRecord
  belongs_to :service
  validates :service_id, presence: true
  validates :up, presence: true
end
