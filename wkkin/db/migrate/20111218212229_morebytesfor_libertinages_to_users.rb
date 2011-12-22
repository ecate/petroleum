class MorebytesforLibertinagesToUsers < ActiveRecord::Migration
  def change
     change_column :users, :libertinages, :bigint, :limit => 11
  end
end
