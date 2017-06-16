require "faker"
password = "passwordz"

# 15.times do
#   Category.create({name: Faker::Hipster.word})
# end
# 2.times do
#   User.create({username: Faker::Internet.user_name, password: password})
# end

# 7.times do
#   Board.create({title: Faker::Hipster.word, description: Faker::Hipster.sentence, category_id: Category.all.sample.id, hosting_id: User.all.sample.id })
# end

# 4.times do
#   user = User.all.sample.id
#   board = Board.all.sample.id

#     Subscription.create({user_id: user, board_id: board})

# end

30.times do
  Job.create({title: Faker::Hipster.word, position: Faker::Hipster.word, description: Faker::Hipster.paragraph, board_id: Board.all.sample.id, jobposting_id: User.all.sample.id })
end
