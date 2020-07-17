class AmusementPark < ApplicationRecord
  has_many :rides

  def alphabetical_order
    rides.order(:name)
  end
end
