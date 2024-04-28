require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user_1) {
    User.new(
      email: "john@ex.com",
      name: "John Doe"
    )
  }
  it "is valid with valid attributes" do
    expect(user_1).to be_valid
  end

  it "is not valid without a name" do
    user_1.name = nil
    expect(user_1).to_not be_valid
  end

  it "is not valid without an email" do
    user_1.email = nil
    expect(user_1).to_not be_valid
  end

  it "is not valid with a duplicate email" do
    user_1.save
    user_2 = User.new(
      email: "john@ex.com",
      name: "John"
    )

    expect(user_2).to_not be_valid
  end
end
