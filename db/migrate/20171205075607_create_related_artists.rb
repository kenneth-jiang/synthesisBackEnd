class CreateRelatedArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :related_artists do |t|
      t.string :artists

      t.timestamps
    end
  end
end
