Dir.chdir 'C:/Users/melle/Music'

@filename = 'all_songs.m3u'

songs = Dir['**/*.mp3']

def shuffle_songs sorted, shuffled
	random = rand(sorted.length)

	shuffled.push sorted[random]
	sorted.delete(sorted[random])

	if sorted.length==0
		File.open @filename, 'w' do |playlist|
			shuffled.each do |song| 
				playlist.write "#{song}\n"
			end
		end
	else shuffle_songs sorted, shuffled
	end
end

shuffle_songs songs, []