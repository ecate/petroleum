class CreateEsrcontrols < ActiveRecord::Migration
  def change
    create_table :esrcontrols do |t|
      t.integer :esrlist_id
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
