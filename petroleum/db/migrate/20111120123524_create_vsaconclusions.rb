class CreateVsaconclusions < ActiveRecord::Migration
  def change
    create_table :vsaconclusions do |t|
      t.string :name
      t.text :details

      t.timestamps
    end
  end
end
