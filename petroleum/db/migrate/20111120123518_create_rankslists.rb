class CreateRankslists < ActiveRecord::Migration
  def change
    create_table :rankslists do |t|
      t.integer :soldier_id
      t.integer :rank_id
      t.date :beginrankdate
      t.date :begincorpdate

      t.timestamps
    end
  end
end
