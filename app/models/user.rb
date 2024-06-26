# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  has_many :investments
  has_many :issuances, through: :investments

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
