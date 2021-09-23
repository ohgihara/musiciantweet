class CreateMusicTerms < ActiveRecord::Migration[6.0]
  def change
    create_table :music_terms do |t|
      t.string :music_term, null: false
      t.text :music_term_view, null: false
      t.integer :user_id
      t.timestamps
    end
  end
end
