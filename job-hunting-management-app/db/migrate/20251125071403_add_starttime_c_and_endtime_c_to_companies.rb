class AddStarttimeCAndEndtimeCToCompanies < ActiveRecord::Migration[8.0]
  def change
    add_column :companies, :starttime_c, :string
    add_column :companies, :endtime_c, :string
  end
end
