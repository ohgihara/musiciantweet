class CreateMusicians < ActiveRecord::Migration[6.0]
  def change
    create_table :musicians do |t|
      t.string :musician_name, null: false
      t.text :musician_view, null: false
      t.text :musician_song, null: false
      t.string :date_of_birth, null: false
      t.integer :musician_era_id, null: false
      t.timestamps
    end
  end
end
