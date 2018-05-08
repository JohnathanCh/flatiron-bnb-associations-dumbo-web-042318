require 'pry'
require_relative './listing.rb'

class User < ActiveRecord::Base
  has_many :listings, :foreign_key => 'host_id'
  has_many :trips, :foreign_key => 'guest_id', :class_name => 'Reservation'

  has_many :reservations, through: :listings
  has_many :reviews, through: :trips
end