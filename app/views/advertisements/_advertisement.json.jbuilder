# frozen_string_literal: true

json.extract! advertisement, :id, :make, :model, :body_type, :mileage, :color, :price, :fuel, :year, :engine_capacity,
              :image, :status, :user_id, :created_at, :updated_at
json.url advertisement_url(advertisement, format: :json)
