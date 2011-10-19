class CreateSoldiers < ActiveRecord::Migration
  def change
    create_table :soldiers do |t|
      t.boolean :active
      t.boolean :ismale
      t.string :firstname
      t.string :familyname
      t.string :usagename
      t.date :birthdate
      t.integer :payid
      t.integer :concertoid
      t.integer :ssid
      t.boolean :iscivilservant
      t.string :publicoffice
      t.string :employername
      t.string :jobname
      t.string :persoemail
      t.string :profemail
      t.integer :persolandphone
      t.integer :proflandphone
      t.integer :persomobilephone
      t.integer :profmobilephone
      t.string :preferedemail
      t.integer :preferedphone
      t.boolean :issma
      t.boolean :isvsl
      t.boolean :isgct

      t.timestamps
    end
  end
end
