# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create(name: 'Comedies')
Category.create(name: 'Badass stuff')
Category.create(name: 'Documentary')

pete = User.create(username: 'Pete', email: '1@1.com', password: '123')
mike = User.create(username: 'Mike', email: '2@1.com', password: '123')
admin = User.create(username: 'admin', email: '3@3.com', password: '123', admin: true)

dummy1 = Fabricate(:user)
dummy2 = Fabricate(:user)
dummy3 = Fabricate(:user)
dummy4 = Fabricate(:user)
dummy5 = Fabricate(:user)

Video.create(title: 'Blackhawk Down', description: 'The film takes place in 1993 when the U.S. sent special forces into Somalia to destabilize the government and bring food and humanitarian aid to the starving population. Using Black Hawk helicopters to lower the soldiers onto the ground, an unexpected attack by Somalian forces brings two of the helicopters down immediately. From there, the U.S. soldiers must struggle to regain their balance while enduring heavy gunfire.', small_cover_url: 'blackhawk_cover_small.jpg', large_cover_url: 'blackhawk_cover_large.jpg', category_id: (1..3).to_a.sample)
Video.create(title: 'Wall Street', description: 'On the Wall Street of the 1980s, Bud Fox (Charlie Sheen) is a stockbroker full of ambition, doing whatever he can to make his way to the top. Admiring the power of the unsparing corporate raider Gordon Gekko (Michael Douglas), Fox entices Gekko into mentoring him by providing insider trading. As Fox becomes embroiled in greed and underhanded schemes, his decisions eventually threaten the livelihood of his scrupulous father (Martin Sheen). Faced with this dilemma, Fox questions his loyalties.', small_cover_url: 'wallstreet_cover_small.jpg', large_cover_url: 'wallstreet_cover_large.jpg', category_id: (1..3).to_a.sample)
Video.create(title: 'Bourne Identity', description: 'The story of a man (Matt Damon), salvaged, near death, from the ocean by an Italian fishing boat. When he recuperates, the man suffers from total amnesia, without identity or background... except for a range of extraordinary talents in fighting, linguistic skills and self-defense that speak of a dangerous past. He sets out on a desperate search-assisted by the initially rebellious Marie (Franka Potente) - to discover who he really is, and why he\'s being lethally pursued by assassins.', small_cover_url: 'bourne_cover_small.jpg', large_cover_url: 'bourne_cover_large.jpg', category_id: (1..3).to_a.sample)
Video.create(title: 'Blackhawk Down', description: 'The film takes place in 1993 when the U.S. sent special forces into Somalia to destabilize the government and bring food and humanitarian aid to the starving population. Using Black Hawk helicopters to lower the soldiers onto the ground, an unexpected attack by Somalian forces brings two of the helicopters down immediately. From there, the U.S. soldiers must struggle to regain their balance while enduring heavy gunfire.', small_cover_url: 'blackhawk_cover_small.jpg', large_cover_url: 'blackhawk_cover_large.jpg', category_id: (1..3).to_a.sample)
Video.create(title: 'Wall Street', description: 'On the Wall Street of the 1980s, Bud Fox (Charlie Sheen) is a stockbroker full of ambition, doing whatever he can to make his way to the top. Admiring the power of the unsparing corporate raider Gordon Gekko (Michael Douglas), Fox entices Gekko into mentoring him by providing insider trading. As Fox becomes embroiled in greed and underhanded schemes, his decisions eventually threaten the livelihood of his scrupulous father (Martin Sheen). Faced with this dilemma, Fox questions his loyalties.', small_cover_url: 'wallstreet_cover_small.jpg', large_cover_url: 'wallstreet_cover_large.jpg', category_id: (1..3).to_a.sample)
Video.create(title: 'Bourne Identity', description: 'The story of a man (Matt Damon), salvaged, near death, from the ocean by an Italian fishing boat. When he recuperates, the man suffers from total amnesia, without identity or background... except for a range of extraordinary talents in fighting, linguistic skills and self-defense that speak of a dangerous past. He sets out on a desperate search-assisted by the initially rebellious Marie (Franka Potente) - to discover who he really is, and why he\'s being lethally pursued by assassins.', small_cover_url: 'bourne_cover_small.jpg', large_cover_url: 'bourne_cover_large.jpg', category_id: (1..3).to_a.sample)
Video.create(title: 'Blackhawk Down', description: 'The film takes place in 1993 when the U.S. sent special forces into Somalia to destabilize the government and bring food and humanitarian aid to the starving population. Using Black Hawk helicopters to lower the soldiers onto the ground, an unexpected attack by Somalian forces brings two of the helicopters down immediately. From there, the U.S. soldiers must struggle to regain their balance while enduring heavy gunfire.', small_cover_url: 'blackhawk_cover_small.jpg', large_cover_url: 'blackhawk_cover_large.jpg', category_id: (1..3).to_a.sample)
Video.create(title: 'Wall Street', description: 'On the Wall Street of the 1980s, Bud Fox (Charlie Sheen) is a stockbroker full of ambition, doing whatever he can to make his way to the top. Admiring the power of the unsparing corporate raider Gordon Gekko (Michael Douglas), Fox entices Gekko into mentoring him by providing insider trading. As Fox becomes embroiled in greed and underhanded schemes, his decisions eventually threaten the livelihood of his scrupulous father (Martin Sheen). Faced with this dilemma, Fox questions his loyalties.', small_cover_url: 'wallstreet_cover_small.jpg', large_cover_url: 'wallstreet_cover_large.jpg', category_id: (1..3).to_a.sample)
Video.create(title: 'Bourne Identity', description: 'The story of a man (Matt Damon), salvaged, near death, from the ocean by an Italian fishing boat. When he recuperates, the man suffers from total amnesia, without identity or background... except for a range of extraordinary talents in fighting, linguistic skills and self-defense that speak of a dangerous past. He sets out on a desperate search-assisted by the initially rebellious Marie (Franka Potente) - to discover who he really is, and why he\'s being lethally pursued by assassins.', small_cover_url: 'bourne_cover_small.jpg', large_cover_url: 'bourne_cover_large.jpg', category_id: (1..3).to_a.sample)
Video.update_all(url: 'https://s3-us-west-2.amazonaws.com/tealeaftraining/myflix/sia-chandelier.mp4')


Line.create(user: User.first, video: Video.first, priority: 3)
Line.create(user: User.first, video: Video.last, priority: 1)
Line.create(user: User.last, video: Video.find(3), priority: 1)
Line.create(user: User.last, video: Video.find(4), priority: 2)

Following.create(leader: dummy3, follower: pete)
Following.create(leader: dummy4, follower: pete)
Following.create(leader: dummy5, follower: pete)

Line.create(user: dummy3, video: Video.find(4), priority: 1)
Line.create(user: dummy3, video: Video.find(2), priority: 2)
Line.create(user: dummy3, video: Video.find(3), priority: 3)
Line.create(user: dummy3, video: Video.find(1), priority: 4)

Line.create(user: dummy5, video: Video.find(4), priority: 1)
Line.create(user: dummy5, video: Video.find(2), priority: 2)
Line.create(user: dummy5, video: Video.find(3), priority: 3)

Following.create(leader: dummy3, follower: mike)
Following.create(leader: dummy3, follower: dummy2)
Following.create(leader: dummy3, follower: dummy4)
Following.create(leader: dummy3, follower: dummy5)

Video.all.each do |video|
  Fabricate(:review, video: video, author: dummy3)
  Fabricate(:review, video: video, author: pete)
  Fabricate(:review, video: video, author: mike)
end

Payment.create(user: pete, amount: 999, reference_id: 'chrge1', created_at: "2015-02-21 00:25:07")
Payment.create(user: pete, amount: 999, reference_id: 'chrge2', created_at: "2015-03-21 00:25:07")
Payment.create(user: pete, amount: 999, reference_id: 'chrge3', created_at: "2015-04-21 00:25:07")