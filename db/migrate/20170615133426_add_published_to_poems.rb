class AddPublishedToPoems < ActiveRecord::Migration[5.0]
  def change
    add_column :poems, :published, :boolean, :default => false
  end
end
