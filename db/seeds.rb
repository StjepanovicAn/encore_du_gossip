require 'faker'
require 'table_print'

10.times do
	user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, 
		description: Faker::Quote.yoda, email: Faker::Internet.email, age: Faker::Number.within(range: 18..75))
end


20.times do
	gossip = Gossip.create(title: Faker::BossaNova.song, content: Faker::Lorem.paragraph, user:User.all.sample)	
end

puts "et voilà tout est parsemé!"