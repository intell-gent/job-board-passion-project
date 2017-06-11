require "faker"
# Faker::Internet.user_name
# Faker::Hipster.word
# Faker::Hipster.paragraph
password = "passwordz"

# 15.times do
#   Category.create({name: Faker::Hipster.word})
# end
# 8.times do
#   Board.create({title: Faker::Hipster.word, description: Faker::Hipster.sentence, category_id: Category.all.sample.id })
# end
# 10.times do
#   User.create({username: Faker::Internet.user_name, password: password})
# end
# 10.times do
#   user = User.all.sample.id
#   board = Board.all.sample.id

#     Subscription.create({user_id: user, board_id: board})

# end
30.times do
  Job.create({title: Faker::Hipster.word, position: Faker::Hipster.word, description: Faker::Hipster.paragraph, board_id: Board.all.sample.id })
end
# 15.times do

#    Category.all.sample.id
# end
