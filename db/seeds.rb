include RandomData


50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all


100.times do
  Comment.create!(

    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

Post.find_or_create_by(title: "I have miles to go and promises to keep before I get to sleep before I get to sleep.", body:"What you read when you don't have to determines what you will be when you can't help it.")

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
