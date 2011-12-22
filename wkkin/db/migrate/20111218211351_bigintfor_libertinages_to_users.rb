class BigintforLibertinagesToUsers < ActiveRecord::Migration
  def change
     change_column :users, :libertinages, :bigint
  end
end
