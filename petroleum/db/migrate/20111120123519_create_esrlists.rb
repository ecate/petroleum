class CreateEsrlists < ActiveRecord::Migration
  def change
    create_table :esrlists do |t|
      t.string :name
      t.integer :soldier_id
      t.boolean :iscurrent, :default => true
      t.date :signaturedate
      t.date :enddate
      t.text :comment

      t.timestamps
    end
  end
end
