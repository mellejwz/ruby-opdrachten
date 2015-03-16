Dir.chdir 'C:/Users/melle/Music'

filename = 'all_songs.m3u'

songs = Dir['**/*.mp3']

File.open filename, 'w' do |playlist|
	songs.each do |song| 
		playlist.write "#{song}\n"
	end
end