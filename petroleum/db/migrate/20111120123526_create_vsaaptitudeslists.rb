class CreateVsaaptitudeslists < ActiveRecord::Migration
  def change
    create_table :vsaaptitudeslists do |t|
      t.integer :vsaaptitude_id
      t.integer :vsalist_id
      t.string :name
      t.text :details

      t.timestamps
    end
  end
end
