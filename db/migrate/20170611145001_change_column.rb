class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
    change_column_null :poems, :title, true
  end
end
