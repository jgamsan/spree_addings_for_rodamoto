class Spree::TireIc < ActiveRecord::Base
  attr_accessible :name
  belongs_to :variant
end
