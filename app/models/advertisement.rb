# frozen_string_literal: true

# == Schema Information
#
# Table name: advertisements
#
#  id              :bigint           not null, primary key
#  make            :string
#  model           :string
#  body_type       :string
#  mileage         :integer
#  color           :string
#  price           :decimal(, )
#  fuel            :string
#  year            :integer
#  engine_capacity :decimal(, )
#  image           :string
#  status          :integer          default("pending"), not null
#  user_id         :bigint           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Advertisement < ApplicationRecord
  belongs_to :user
  validates :make, :model, :body_type, :mileage, :color, :price, :fuel, :year, :engine_capacity, presence: true

  enum status: {
    pending:  0,
    approved: 1,
    rejected: 2
  }
end
