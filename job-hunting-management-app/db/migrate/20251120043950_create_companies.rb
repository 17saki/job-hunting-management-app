class CreateCompanies < ActiveRecord::Migration[8.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :interest
      t.string :choice
      t.string :situation
      t.string :schedule
      t.string :date_c
      t.string :time_c
      t.string :detail
      t.string :memo_c

      t.timestamps
    end
  end
end
