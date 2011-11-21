class CreateVsalists < ActiveRecord::Migration
  def change
    create_table :vsalists do |t|
      t.integer :soldier_id
      t.integer :vsaconclusion_id
      t.string :name
      t.date :examdate
      t.boolean :iscurrent, :default => true
      t.boolean :isapteESR
      t.boolean :isapteService
      t.boolean :isapteTir
      t.boolean :hasrestriction
      t.boolean :hastirrestriction
      t.text :doctorcomment

      t.timestamps
    end
  end
end
