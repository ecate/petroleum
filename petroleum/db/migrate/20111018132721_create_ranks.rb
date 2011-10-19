class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.integer :corp_id
      t.string :name
      t.integer :agelimit
      t.timestamps
    end
  end
end
