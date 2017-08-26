class Event < ApplicationRecord
  belongs_to :user
  has_many :todos
  validates :user_id, presence: true
  # validates :text, :user, presence: true
end
