require 'rails_helper'

RSpec.describe Issuance, type: :model do
  let(:issuance_1) {
    Issuance.new(
      name: "Lite Coin",
      max_amount: 1000,
      start_date: Date.today,
      end_date: Date.today + 1.month
    )
  }

  it "is valid with valid attributes" do
    expect(issuance_1).to be_valid
  end

  it "is not valid without a name" do
    issuance_1.name = nil
    expect(issuance_1).to_not be_valid
  end

  it "is not valid without a max amount" do
    issuance_1.max_amount = nil
    expect(issuance_1).to_not be_valid
  end

  it "is not valid without a start date" do
    issuance_1.start_date = nil
    expect(issuance_1).to_not be_valid
  end

  it "is not valid without an end date" do
    issuance_1.end_date = nil
    expect(issuance_1).to_not be_valid
  end

  it "is not valid with a start date after end date" do
    issuance_1.start_date = Date.today + 1.month
    issuance_1.end_date = Date.today
    expect(issuance_1).to_not be_valid
  end
end
