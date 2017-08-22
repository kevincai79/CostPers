User.destroy_all
Item.destroy_all
Use.destroy_all

User.create!({
  first_name: "Test",
  last_name: "Tester",
  email: "test@test.com",
  password: "password"
  })

10.times do
  Item.create!({
    name: Faker::Hipster.word,
    price: rand(50.0..450.0),
    user_id: User.all.sample.id,
    })
end

50.times do
  Use.create!({
    item_id: Item.all.sample.id
    })
end
