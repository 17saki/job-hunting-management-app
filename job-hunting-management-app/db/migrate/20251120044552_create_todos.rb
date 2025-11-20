class CreateTodos < ActiveRecord::Migration[8.0]
  def change
    create_table :todos do |t|
      t.string :date_t
      t.string :time_t
      t.string :name
      t.string :do
      t.string :memo_t

      t.timestamps
    end
  end
end
