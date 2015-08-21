class AddArtistToSongs < ActiveRecord::Migration
	def change 
		change_table :songs do |t|
			t.belongs_to :artist
		end
	end
end
