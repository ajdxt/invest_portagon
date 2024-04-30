# == Schema Information
#
# Table name: issuances
#
#  id         :integer          not null, primary key
#  name       :string
#  max_amount :decimal(, )
#  start_date :date
#  end_date   :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Issuance < ApplicationRecord
  include InvestmentMethods
  has_many :investments
  has_many :users, through: :investments

  validates :name, presence: true
  validates :max_amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :start_date, presence: true
  validates :end_date, presence: true, comparison: { greater_than: :start_date }
end
