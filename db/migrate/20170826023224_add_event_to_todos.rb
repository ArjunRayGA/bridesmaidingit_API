class AddEventToTodos < ActiveRecord::Migration[5.0]
  def change
    add_reference :todos, :event, foreign_key: true
  end
end
