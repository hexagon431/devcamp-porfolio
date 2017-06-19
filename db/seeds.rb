10.times do |blog|
  Blog.create!(
    title: "Blog Post #{blog}",
    body: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
    )
  end
  
  puts "5 skills created"
  
  9.times do |portfolio_item|
    Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: "My service",
      body: "i really don't want to copy-paste a ton of latin so this will do",
      main_image: "http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/350x200",
      )
  end
  
  puts "9 portfolio items created"
  puts "5 skills created"