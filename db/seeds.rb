# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "faker"

include Faker

100.times do
  user = User.create ({
    first_name: Faker::Name.first_name,
    second_name: Faker::Name.last_name,
    username: Faker::Name.name,
    bio: Faker::Lorem.sentences(3),
    email: Faker::Internet.email,
    created_at: Faker::Date.between(12.days.ago, 2.days.ago),
    updated_at: Faker::Date.between(2.days.ago, Date.today),
    encrypted_password: Faker::Lorem.word
    })
end

20.times do
  theme = Theme.create ({
    name: Faker::Hacker.noun,
    description: Faker::Lorem.sentences(2),
    created_at: Faker::Date.between(12.days.ago, 2.days.ago),
    updated_at: Faker::Date.between(2.days.ago, Date.today)
    })
end

500.times do
  link = Link.create ({
    title: Faker::Lorem.sentence(3),
    url: Faker::Internet.url,
    created_at: Faker::Date.between(12.days.ago, 2.days.ago),
    updated_at: Faker::Date.between(2.days.ago, Date.today),
    user_id: Faker::Number.between(1, 50),
    theme_id: Faker::Number.between(1, 20)
    })
end

400.times do
  comment = Comment.create ({
    link_id: Faker::Number.between(1, 500),
    user_id: Faker::Number.between(1, 100),
    body: Faker::Lorem.sentence(6, true, 6)
    })
end

