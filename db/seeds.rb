puts "Seeds"


User.destroy_all

puts "create 1 user: polo@polo.fr, 00000000"

User.create!(email: "polo@polo.fr", password: "00000000")

puts "#{User.count} user created"
