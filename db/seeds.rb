# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(first_name: "Anum", last_name: "Siddiqui", email: "anum@gmail.com", password: "123456")

user2 = User.create(first_name: "Jane", last_name: "Doe", email: "jane@gmail.com", password: "123456")

blog1 = Blog.create(title: "First Day in Rome", content: "From there, we walked along narrow, cobbled streets towards the Colosseum, the route being signposted by Roman soldier emblems on the pavements.  The Colosseum was a large amphitheatre constructed by the Emperors of Rome to entertain the masses with gladiatorial shows and hunts of wild animals.  In 80 AD the Colosseum was completed and an inauguration lasting 100 days was held, all shows being free with seats being allocated according to the class of spectator.  Viewing the iconic Colosseum was an impressive sight as it is one of the most recognisable monuments of Ancient Rome.", user_id: user1.id, date: "August 1, 2018")

blog2 = Blog.create(title: "First Day in France", content: "I finished off my first day in France by baking a cheese souffle with the girls for dinner. Making souffle had always intimidate me – what if, god forbid, it were to deflate, like in all the movies?", user_id: user2.id, date: "September 1, 2018")

comment1 = Comment.create(content: "Great blog post!", user_id: user1.id, blog_id: blog1.id)

comment2 = Comment.create(content: "Interesting post!", user_id: user2.id, blog_id: blog2.id)
