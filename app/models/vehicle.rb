class Vehicle < ApplicationRecord

  def initialize(args={})
  end

  def get_brand
    @vehicle = Vehicle.find_by(brand: "mahindra")
  end
end
