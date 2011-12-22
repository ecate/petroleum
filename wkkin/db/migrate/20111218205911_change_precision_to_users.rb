class ChangePrecisionToUsers < ActiveRecord::Migration
  def change
    change_column :users, :libertinages, :integer, :limit => 8
  end

end
