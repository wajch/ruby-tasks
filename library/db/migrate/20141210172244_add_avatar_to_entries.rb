class AddAvatarToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :avatar_url, :string
  end
end
