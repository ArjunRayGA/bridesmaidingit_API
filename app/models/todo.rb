class Todo < ApplicationRecord
  belongs_to :event, dependent: :destroy
end
