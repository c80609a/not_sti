user = User.find 1
boat = Boat.find 1

rent = ::Deals::Rent.new(
  rent_type: ::Deals::Rent::TYPE_BOAT,
  owner:        user,
  address:      'Moscow'
)

rb = ::Deals::RentBoat.new
rb.rent = rent
rb.boat = boat

ActiveRecord::Base.transaction do
  rent.save!
  rb.save!
end
