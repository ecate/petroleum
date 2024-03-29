class AddAvatarToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :avatar_file_name, :string
    add_column :users, :avatar_content_type, :string
    add_column :users, :avatar_file_size, :integer
    add_column :users, :avatar_updated_at, :datetime
  end

  def self.down
    add_column :users, :avatar_file_name
    add_column :users, :avatar_content_type
    add_column :users, :avatar_file_size
    add_column :users, :avatar_updated_at

  end
end
