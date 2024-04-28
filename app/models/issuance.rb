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
  has_many :investments
  has_many :users, through: :investments

  validates :name, presence: true
  validates :max_amount, presence: true, numericality: { greater_than: 0 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :validate_start_date_before_end_date

  def validate_start_date_before_end_date
    return unless start_date && end_date

    errors.add(:start_date, 'must be before end date') if start_date >= end_date
  end

  def in_period?(date)
    start_date <= date && end_date >= date
  end
end
