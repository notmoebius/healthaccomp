class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.string :label
      t.text :action_desc

      t.timestamps
    end
  end
end
