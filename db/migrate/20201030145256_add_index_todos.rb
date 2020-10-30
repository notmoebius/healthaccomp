class AddIndexTodos < ActiveRecord::Migration[5.2]
  def change
    add_reference :todos, :report, foreign_key: true
  end
end
