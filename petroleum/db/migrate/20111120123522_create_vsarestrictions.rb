class CreateVsarestrictions < ActiveRecord::Migration
  def change
    create_table :vsarestrictions do |t|
      t.string :name
      t.text :details

      t.timestamps
    end
  end
end
