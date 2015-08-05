class AddSongsToArtist < ActiveRecord::Migration
  def change
    add_column :artist, :songs, :string
  end
end
