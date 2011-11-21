class CreateVsaaptitudes < ActiveRecord::Migration
  def change
    create_table :vsaaptitudes do |t|
      t.string :name
      t.text :details

      t.timestamps
    end
  end
end
