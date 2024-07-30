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
require 'test_helper'

class AdvertisementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
