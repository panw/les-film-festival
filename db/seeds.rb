# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
action_adventure = Category.create(name: 'Action/Adventure')
drama = Category.create(name: 'Drama')
comedy = Category.create(name: 'Comedy')
thriller_horror = Category.create(name: 'Thriller/Horror')
musical = Category.create(name: 'Musical')
documentary = Category.create(name: 'Documentary')

bobby = User.create!(first_name: "Bobby", last_name: "Je Niro", role: :admin, email: "bobby@lesfilmfest.org", password: "password")
peo = User.create!(first_name: "Peo", last_name: "PiCaprio", role: :admin, email: "peo@lesfilmfest.org", password: "password")
iuliia = User.create!(first_name: "Iuliia", last_name: "Roberts", role: :judge, email: "iuliia@lesfilmfest.org", password: "password")
ryan = User.create!(first_name: "Ryan", last_name: "Ronalds", role: :judge, email: "ryan@lesfilmfest.org", password: "password")
zack = User.create!(first_name: "Zack", last_name: "Praff", role: :judge, email: "zack@lesfilmfest.org", password: "password")
joe = User.create!(first_name: "Joe", last_name: "Blogs", role: :general, email: "joe@example.com", password: "password")
mary = User.create!(first_name: "Mary", last_name: "Contrary", role: :general, email: "mary@example.com", password: "password")
xena = User.create!(first_name: "Xena", last_name: "WarriorPrincess", role: :general, email: "xena@example.com", password: "password")



[action_adventure, drama, comedy, thriller_horror, musical, documentary].each do |category|
  6.times do
	  users = [bobby, peo, iuliia, ryan, zack, joe, mary, xena].shuffle
	  film = Film.new(
			name: Faker::Book.title, 
			description: Faker::Hipster.paragraph, 
			category: category,
      reviews: (1..5).map { Review.create!(rating: rand(0..10), content: Faker::Hipster.paragraph, user: users.pop) }
		)
		film.image_url = Faker::Avatar.image(film.name.split(' ').join('-'), '280x420')
		film.save!
	end
end

Review.all.each do |review|
  users = [bobby, peo, iuliia, ryan, zack, joe, mary, xena].shuffle
  rand(0..users.size).times do
    Comment.create!(content: Faker::Hipster.paragraph, user: users.pop, review: review)
  end
end
