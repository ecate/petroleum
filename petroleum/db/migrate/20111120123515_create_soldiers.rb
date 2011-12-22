class CreateSoldiers < ActiveRecord::Migration
  def change
    create_table :soldiers do |t|
      t.string :name
      t.string :firstname
      t.string :usagename
      t.date :birthdate
      t.boolean :active
      t.boolean :ismale
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
      t.string :l2_balescetageporte
      t.string :l3_resbat
      t.string :l4_numvoie
      t.string :l5_bptsabureau
      t.string :l6_commune
      t.integer :l7_codepostal
      t.string :l8_pays, :default => "France"

      t.timestamps
    end
  end
end
