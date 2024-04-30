require 'rails_helper'

RSpec.describe Investment, type: :model do

  let(:user_1) {
    User.new(
      email: "john@ex.com",
      name: "John Doe"
    )
  }

  let(:issuance_1) {
    Issuance.new(
      name: "Lite Coin",
      max_amount: 1000,
      start_date: Date.today,
      end_date: Date.today + 1.month
    )
  }

  let(:investment_1) {
    Investment.new(
      user: user_1,
      issuance: issuance_1,
      amount: 100
    )
  }

  it "is valid with valid attributes" do
    expect(investment_1).to be_valid
  end

  it "is not valid without a user" do
    investment_1.user = nil
    expect(investment_1).to_not be_valid
  end

  it "is not valid without an issuance" do
    investment_1.issuance = nil
    expect(investment_1).to_not be_valid
  end

  it "is not valid without an amount" do
    investment_1.amount = nil
    expect(investment_1).to_not be_valid
  end

  it "is not valid with a negative amount" do
    investment_1.amount = -100
    expect(investment_1).to_not be_valid
  end

  it "is not valid with an amount greater than the issuance max amount" do
    investment_1.amount = 2000
    expect(investment_1).to_not be_valid
  end

  it "is not valid if the investment is outside the issuance period" do
    issuance_1.start_date = Date.today + 1.month
    issuance_1.end_date = Date.today + 2.months
    investment_1.created_at = Date.today
    expect(investment_1).to_not be_valid
  end

  it "is not valid if the investment amount is greater than the remaining amount" do
    investment_1.amount = 1500
    expect(investment_1).to_not be_valid
  end
end
