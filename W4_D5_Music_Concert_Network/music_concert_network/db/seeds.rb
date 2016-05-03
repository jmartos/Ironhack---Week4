concert_1 = Concert.create(artist: "The Who", venue: "Stadium", city: "Paris", date: Date.today + rand(1..60).days, price: rand(30..60), description: "The best concert in the city")
concert_2 = Concert.create(artist: "The Rollin Stones", venue: "Stadium", city: "Paris", date: Date.today + rand(1..60).days, price: rand(30..60), description: "The best concert in the city")
concert_3 = Concert.create(artist: "The Beatles", venue: "Stadium", city: "Paris", date: Date.today + rand(1..60).days, price: rand(30..60), description: "The best concert in the city")
concert_4 = Concert.create(artist: "Led Zeppelin", venue: "Stadium", city: "Paris", date: Date.today + rand(1..60).days, price: rand(30..60), description: "The best concert in the city")
concert_5 = Concert.create(artist: "Ironmaiden", venue: "Stadium", city: "Paris", date: Date.today + rand(1..60).days, price: rand(30..60), description: "The best concert in the city")

puts "projects created"