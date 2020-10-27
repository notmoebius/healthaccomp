class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :label
      t.text :action_desc

      t.timestamps
    end
  end
end
