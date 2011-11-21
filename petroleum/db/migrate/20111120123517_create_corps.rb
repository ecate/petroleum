class CreateCorps < ActiveRecord::Migration
  def change
    create_table :corps do |t|
      t.string :name

      t.timestamps
    end
  end
end
