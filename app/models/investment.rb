# == Schema Information
#
# Table name: investments
#
#  id          :integer          not null, primary key
#  issuance_id :integer          not null
#  user_id     :integer          not null
#  amount      :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Investment < ApplicationRecord
  belongs_to :issuance
  belongs_to :user

  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates_with InvestmentValidator, on: %i[create update]
end
