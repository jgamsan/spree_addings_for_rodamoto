Spree::Variant.class_eval do
  attr_accessible :tire_fr_id, :tire_speed_code_id, :tire_tttl_id, :tire_profile_id, :tire_ic_id, :tire_innertube_id, :tire_width_id
  has_many :tire_widths
  has_many :tire_profiles
  has_many :tire_innertubes
  has_many :tire_ics
  has_many :tire_speed_codes
  has_many :tire_frs
  has_many :tire_tttls
end
