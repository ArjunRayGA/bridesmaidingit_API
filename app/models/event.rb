class Event < ApplicationRecord
  belongs_to :user
  has_many :todos
  # was validates :user_id, presence: true
  validates :user, presence: true
  # validates :text, :user, presence: true
end
