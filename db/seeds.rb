5.times do 
	Artist.create({
		name: Faker::Name.name
		}) 	
end

10.times do 
	Genre.create({
		name: Faker::Address.country
		})
end

10.times do
	genres = Genre.all.sort
	artists = Artist.all.sort
	Song.create({
		name: Faker::Book.title,
		genre_id: genres[rand(1..10)].id,
		artist_id: artists[rand(1..5)].id
	})
end
