class CreateSpreeTireTttls < ActiveRecord::Migration
  def change
    create_table :spree_tire_tttls do |t|
      t.string :name

      t.timestamps
    end
    file = "#{Rails.root}/db/datas/tttl.csv"
    CSV.foreach(file, :col_sep =>';') do |row|
      Spree::TireTttl.create(:name => row[0])
    end 
  end
end
