class AddIndexKeywords < ActiveRecord::Migration[5.2]
  def change
    add_reference :keywords, :report, foreign_key: true
  end
end
