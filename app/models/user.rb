class User < ActiveRecord::Base
has_many :listings, :foreign_key => 'host_id'
has_many :reservations, through: :listings
has_many :reviews, through: :reservations

has_many :trips, :foreign_key => 'guest_id', :class_name => "Reservation"
has_many :reviews, :foreign_key => 'guest_id'
# has_many :reviews, :foreign_key => 'guest_id', :through => :reservations
# has_many :trips, :through => :reservations, :foreign_key =>'guest_id'



end
