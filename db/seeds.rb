
1.times do |n|
  nickname = Faker::Name.name 
  email = Faker::Internet.email
  User.create!(
    nickname: nickname,
    email: email,
    password: "aaaaa1",
    password_confirmation: "aaaaa1",
    prefecture_id: 7,
  )
end


10.times do |n|
  title = Faker::Food.sushi
  content = Faker::JapaneseMedia::OnePiece.akuma_no_mi
  time = Faker::Date.in_date_period(month: 2)
  Event.create!(
    title: title,
    content: content,
    start_time: time,
    end_time: time,
    label_color: "white",
    user_id: 1,
  )
end

10.times do |n|
  title = Faker::JapaneseMedia::Conan.character 
  content = Faker::JapaneseMedia::Conan.vehicle
  time = Faker::Date.in_date_period(month: 2)
  Event.create!(
    title: title,
    content: content,
    start_time: time,
    end_time: time,
    label_color: "red",
    user_id: 1,
  )
end

10.times do |n|
  title = Faker::JapaneseMedia::Doraemon.character
  content = Faker::JapaneseMedia::Doraemon.gadget
  time = Faker::Date.in_date_period(month: 2)
  Event.create!(
    title: title,
    content: content,
    start_time: time,
    end_time: time,
    label_color: "pink",
    user_id: 1,
  )
end

10.times do |n|
  title = Faker::Creature::Animal.name
  content = Faker::JapaneseMedia::OnePiece.akuma_no_mi
  time = Faker::Date.in_date_period(month: 2)
  Event.create!(
    title: title,
    content: content,
    start_time: time,
    end_time: time,
    label_color: "orange",
    user_id: 1,
  )
end

10.times do |n|
  title = Faker::Food.dish
  content = Faker::JapaneseMedia::OnePiece.akuma_no_mi
  time = Faker::Date.in_date_period(month: 2)
  Event.create!(
    title: title,
    content: content,
    start_time: time,
    end_time: time,
    label_color: "green",
    user_id: 1,
  )
end

10.times do |n|
  title = Faker::Food.ingredient
  content = Faker::JapaneseMedia::OnePiece.akuma_no_mi
  time = Faker::Date.in_date_period(month: 2)
  Event.create!(
    title: title,
    content: content,
    start_time: time,
    end_time: time,
    label_color: "blue",
    user_id: 1,
  )
end

10.times do |n|
  title = Faker::Food.vegetables
  content = Faker::JapaneseMedia::OnePiece.akuma_no_mi
  time = Faker::Date.in_date_period(month: 2)
  Event.create!(
    title: title,
    content: content,
    start_time: time,
    end_time: time,
    label_color: "purple",
    user_id: 1,
  )
end

10.times do |n|
  title = Faker::Color.color_name
  content = Faker::JapaneseMedia::OnePiece.akuma_no_mi
  time = Faker::Date.in_date_period(month: 2)
  Event.create!(
    title: title,
    content: content,
    start_time: time,
    end_time: time,
    label_color: "brown",
    user_id: 1,
  )
end


100.times do |n|
  title = Faker::Food.fruits
  time = Faker::Date.in_date_period(month: 2)
  Post.create!(
    title: title,
    check: 1,
    user_id: 1,
  )
end