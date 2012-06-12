Spree::Variant.class_eval do
  has_many :tire_widths
  has_many :tire_profiles
  has_many :tire_innertubes
  has_many :tire_ics
  has_many :tire_speed_codes
  has_many :tire_frs
  has_many :tire_tttls
end
