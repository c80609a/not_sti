module Deals
  class RentBoatsController < ApplicationController
    before_action :define_form

    def new; end

    def create
      if @form.submit
        puts 'OK2'
      else
        puts 'FAIL2'
        render :new
      end
    end

    def params_rent_boat
      return {} unless params[:deals_rent_boat_form].present?
      params.require(:deals_rent_boat_form).permit(:address, :boat_id, :email)
    end

    private

    def define_form
      @form = ::Deals::RentBoatForm.new params_rent_boat
    end

  end
end