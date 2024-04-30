class InvestmentValidator < ActiveModel::Validator

  def validate(record)
    @record = record
    validate_investment_amount
    investment_amount_less_than_remaining_amount
    in_investment_period
  end

  private

  attr_accessor :record

  delegate :issuance, :amount, :errors, :created_at, to: :record

  def validate_investment_amount
    return unless issuance && amount

    errors.add(:amount, 'must be less than or equal to the remaining amount') if amount > issuance.max_amount
  end

  def investment_amount_less_than_remaining_amount
    return unless issuance && amount

    errors.add(:amount, 'must be less than or equal to the remaining amount') if amount > issuance.remaining_amount
  end

  def in_investment_period
    return unless issuance && created_at

    errors.add(:created_at, 'must be within the issuance period') unless issuance.in_period?(created_at)
  end
end
