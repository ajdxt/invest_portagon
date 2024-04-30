module InvestmentMethods
  def in_period?(date)
    start_date <= date && end_date >= date
  end

  def remaining_amount
    max_amount - investments.sum(:amount)
  end

  def investable?
    remaining_amount.positive? && in_period?(Date.today)
  end

  def remaining_amount_percent
    binding.pry
    (remaining_amount.to_f / max_amount.to_f).round(2) * 100
  end
end
