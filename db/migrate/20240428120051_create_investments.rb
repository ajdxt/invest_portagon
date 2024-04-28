class CreateInvestments < ActiveRecord::Migration[7.0]
  def change
    create_table :investments do |t|
      t.references :issuance, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.decimal :amount

      t.timestamps
    end
  end
end
