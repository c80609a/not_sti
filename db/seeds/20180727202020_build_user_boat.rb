
u  = User.new email: 'tz007@mail.ru'
b  = Boat.new title: 'Boat #1'

b.owner        = u
b.boat_type_id = BoatType::LODKA
b.title        = 'My lodka'

u.save!
b.save!


