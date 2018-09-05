# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end


10.times do |blog|
  Blog.create!(
    title:"My blog post #{blog}",
    body: "Sed ut perspiciatis
      unde omnis iste natus error sit vol
      uptatem accusantium doloremque laudan
      tium, totam rem aperiam, eaque ipsa
      quae ab illo inventore veritatis et
      quasi architecto beatae vitae dicta
      sunt explicabo. Nemo enim ipsam
      voluptatem quia voluptas sit aspernatur
      aut odit aut fugit, sed quia consequu
      ntur magni dolores eos qui ratione vol
      uptatem sequi nesciunt. Neque porro q
      uisquam est, qui dolorem ipsum quia d
      olor sit amet, consectetur, adipisci v
      elit, sed quia non numquam eius modi",
    topic_id: Topic.last.id
  )
end
puts "10 blog posts created."

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 1 + skill
  )
end
puts "5 skills posts created."

8.times do |portfolio|
  Portfolio.create!(
    title:"Portfolio title #{portfolio}",
    subtitle:"Ruby on Rails",
    body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image:"https://via.placeholder.com/350x250",
  )
end

8.times do |portfolio|
    Portfolio.create!(
      title:"Portfolio title #{portfolio}",
      subtitle:"Angular",
      body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      main_image: "https://via.placeholder.com/600x400",
      thumb_image:"https://via.placeholder.com/350x250",
    )
end

puts "9 portfolio items created."

3.times do |technology|
  Portfolio.last.technologies.create!(
      name:"Technology #{technology}"
  )
end