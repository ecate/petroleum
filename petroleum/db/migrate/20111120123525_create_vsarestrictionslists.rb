class CreateVsarestrictionslists < ActiveRecord::Migration
  def change
    create_table :vsarestrictionslists do |t|
      t.integer :vsarestriction_id
      t.integer :vsalist_id
      t.string :name
      t.text :details

      t.timestamps
    end
  end
end
