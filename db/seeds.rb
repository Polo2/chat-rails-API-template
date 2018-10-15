puts "Seeds"


User.destroy_all

puts "create 1 user: polo@polo.fr, 00000000"

polo = User.create!(email: "polo@polo.fr", password: "00000000")

puts "#{User.count} user created"

Channel.destroy_all

puts "create 2 channels: general, btach-109"

general = Channel.create!(name: "general")
batch_109 = Channel.create!(name: "batch-109")

puts "#{Channel.count} channels created"

Message.destroy_all

puts "create 2 messages, one by channel"

Message.create!(
  channel: general,
  user: polo,
  content: "Bonjour général",
)

Message.create!(
  channel: batch_109,
  user: polo,
  content: "Salut les 109!",
)

puts "#{Message.count} messages created"

