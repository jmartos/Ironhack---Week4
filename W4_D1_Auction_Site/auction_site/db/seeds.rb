
(1..10).each do |time|
  p = User.create(name:"User #{time}", email: "mail#{time}@mail.com")
  rand(1..5).times.each do |time|
   t =  p.products.new(title:"Product #{time+1}", description:"Description for product #{time+1}", deadline: DateTime.now + 10.days)
    t.save
  end
  
end

puts "projects created"
