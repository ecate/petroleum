class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.date :inscription
      t.string :username
      t.integer :vousetes
      t.integer :region
      t.integer :ville
      t.integer :pays
      t.integer :orientation_sexuelle
      t.integer :zodiac
      t.integer :silhouette
      t.integer :yeux
      t.integer :ethnie
      t.integer :mobilites
      t.integer :disponibilite
      t.text :bio
      t.integer :libertinages, :precision => 20
      t.integer :recherches
      t.integer :relation_recherchee
      t.boolean :charte_validee
      t.integer :roles
      t.date :date_naissance
      t.date :date_naissance2
      t.integer :zodiac2
      t.integer :silhouette2
      t.integer :ethnie2

      t.timestamps
    end
  end
end
