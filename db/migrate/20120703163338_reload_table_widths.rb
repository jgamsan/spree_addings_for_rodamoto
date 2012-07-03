class ReloadTableWidths < ActiveRecord::Migration
  def up
    
  end
  execute "truncate table spree_tire_widths;"
  execute "ALTER SEQUENCE tire_widths_id_seq RESTART WITH 1;"
  file = "#{Rails.root}/db/datas/anchos.csv"
  CSV.foreach(file, :col_sep =>',') do |row|
    Spree::TireWidth.create(:name => row[0])
  end

  def down
  end
end
