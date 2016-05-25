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

[action_adventure, drama, comedy, thriller_horror, musical, documentary].each do |cat|
	5.times do
		film = Film.new(
			name: Faker::Book.title, 
			description: Faker::Hipster.paragraph, 
			category: cat
		)
		film.image_url = Faker::Avatar.image(film.name.split(' ').join('-'), '280x420')
		film.save!
	end
end
