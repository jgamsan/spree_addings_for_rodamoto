class Spree::TireFr < ActiveRecord::Base
  attr_accessible :name
  belongs_to :variant
end
