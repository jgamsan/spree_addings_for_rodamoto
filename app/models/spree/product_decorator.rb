Spree::Product.class_eval do
  delegate_belongs_to :master, :tire_width_id, :tire_profile_id, :tire_innertube_id, :tire_ic_id, 
                               :tire_speed_code_id, :tire_fr_id, :tire_tttl_id
end
