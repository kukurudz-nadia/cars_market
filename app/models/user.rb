# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  first_name             :string           not null
#  last_name              :string           not null
#  role                   :integer          default("default"), not null
#  blocked_at             :datetime
#  dob                    :datetime
#  phone_number           :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class User < ApplicationRecord
  extend Devise::Models

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  validates :email, uniqueness: true, length: { in: 6..320 }, format: { with: Devise.email_regexp }
  # validates :first_name, format: { with: /\A[a-zA-Z\s'ʼ`]+\z/ }, length: { in: 2..40 }, presence: true
  validates :role, presence: true

  enum role: {
    default: 0,
    admin: 1
  }
end
