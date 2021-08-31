# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
30.times do
  article = Article.create!(
    user_id: Faker::Number.between(from: 1, to: 30),
    title: Faker::Games::Zelda.character,
    content: Faker::Quote.yoda
  )
end

10.times do
  comment = Comment.create!(
    article_id: Faker::Number.between(from: 1, to: 30),
    content: Faker::Quote.yoda
  )
end