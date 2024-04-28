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

  validates :amount, presence: true, numericality: { greater_than: 0 }
  validate :validate_investment_amount, on: %i[create update]
  validate :in_investment_period, on: %i[create update]

  def validate_investment_amount
    return unless issuance && amount

    errors.add(:amount, 'must be less than or equal to the remaining amount') if amount > issuance.max_amount
  end

  def self.total_investment_amount
    sum(:amount)
  end

  def self.total_investment_amount_by_user(user)
    where(user: user).sum(:amount)
  end

  def self.total_investment_amount_by_issuance(issuance)
    where(issuance: issuance).sum(:amount)
  end

  def in_investment_period
    return unless issuance && created_at

    errors.add(:created_at, 'must be within the issuance period') unless issuance.in_period?(created_at)
  end
end
