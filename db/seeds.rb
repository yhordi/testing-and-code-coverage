100.times do
  Article.create(title: Faker::App.name, body: Faker::Hacker.say_something_smart )
end