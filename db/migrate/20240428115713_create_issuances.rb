class CreateIssuances < ActiveRecord::Migration[7.0]
  def change
    create_table :issuances do |t|
      t.string :name
      t.decimal :max_amount
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
