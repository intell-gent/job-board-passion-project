require "faker"

5.times do
  Category.create({name: Faker::Hipster.word})
end
1.times do
  User.create({username: ENV["MY_UNAM"], password: ENV["MY_PWRD"], email: ENV["MY_EMAIL"]})
end

6.times do
  Board.create({title: Faker::Hipster.word, description: Faker::Hipster.sentence, category_id: Category.all.sample.id, hosting_id: User.all.sample.id })
end


10.times do
  Job.create({title: Faker::Hipster.word, position: Faker::Hipster.word, description: Faker::Hipster.paragraph, board_id: Board.all.sample.id, jobposting_id: User.all.sample.id })
end
