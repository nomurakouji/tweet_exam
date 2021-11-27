class RenameTalkColumnToContent < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :talk, :content
  end
end
