module Deals
  class RentBoatForm < ApplicationForm

    fields :rent,       :address
    fields :rent_boat,  :boat_id
    fields :user,       :email

    def initialize(params)
      @user      = User.find_by(email: params[:email]) || User.new(params[:email])
      @boat      = Boat.find_by id: params[:boat_id]
      byebug
      @rent      = ::Deals::Rent.new params[:address]
      @rent_boat = ::Deals::RentBoat.new

      @rent.owner     = @user
      @rent_boat.rent = @rent
      @rent_boat.boat = @boat
    end

    def submit
      if valid?
        puts 'OK'
        return true
      end

      byebug
      puts 'FAIL'
      false
    end

    def valid?

      super
    end

  end
end