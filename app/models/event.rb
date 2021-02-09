class Event < ApplicationRecord
  belongs_to :user

  validates :title      , presence: true
  validates :start_time , presence: true
  validates :end_time   , presence: true
  validates :label_color, presence: true
end
