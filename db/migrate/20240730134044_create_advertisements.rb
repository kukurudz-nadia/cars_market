class CreateAdvertisements < ActiveRecord::Migration[7.1]
  def change
    create_table :advertisements do |t|
      t.string     :make
      t.string     :model
      t.string     :body_type
      t.integer    :mileage
      t.string     :color
      t.decimal    :price
      t.string     :fuel
      t.integer    :year
      t.decimal    :engine_capacity
      t.string     :image
      t.integer    :status, null: false, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
