Spree::Product.class_eval do
  attr_accessible :tire_fr_id, :tire_speed_code_id, :tire_tttl_id, :tire_profile_id, :tire_ic_id, :tire_innertube_id, :tire_width_id
  delegate_belongs_to :master, :tire_width_id, :tire_profile_id, :tire_innertube_id, :tire_ic_id, 
                               :tire_speed_code_id, :tire_fr_id, :tire_tttl_id
  delegate_belongs_to :master, :pvp3, :pvp7, :pvp9, :pvp12
end
