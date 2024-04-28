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
require "test_helper"

class IssuanceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
