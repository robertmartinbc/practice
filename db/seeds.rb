require 'faker'

rand(10..30).times do
  a = Assignment.create(title: Faker::Lorem.words(rand(1..10)).join(" "), body: Faker::Lorem.paragraphs(rand(1..4)).join("\n"))  
  end

puts "Seed finished"
puts "#{Assignment.count} posts created"
