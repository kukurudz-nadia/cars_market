# frozen_string_literal: true

require 'application_system_test_case'

class AdvertisementsTest < ApplicationSystemTestCase
  setup do
    @advertisement = advertisements(:one)
  end

  test 'visiting the index' do
    visit advertisements_url
    assert_selector 'h1', text: 'Advertisements'
  end

  test 'should create advertisement' do
    visit advertisements_url
    click_on 'New advertisement'

    fill_in 'Body type', with: @advertisement.body_type
    fill_in 'Color', with: @advertisement.color
    fill_in 'Engine capacity', with: @advertisement.engine_capacity
    fill_in 'Fuel', with: @advertisement.fuel
    fill_in 'Image', with: @advertisement.image
    fill_in 'Make', with: @advertisement.make
    fill_in 'Mileage', with: @advertisement.mileage
    fill_in 'Model', with: @advertisement.model
    fill_in 'Price', with: @advertisement.price
    fill_in 'Status', with: @advertisement.status
    fill_in 'User', with: @advertisement.user_id
    fill_in 'Year', with: @advertisement.year
    click_on 'Create Advertisement'

    assert_text 'Advertisement was successfully created'
    click_on 'Back'
  end

  test 'should update Advertisement' do
    visit advertisement_url(@advertisement)
    click_on 'Edit this advertisement', match: :first

    fill_in 'Body type', with: @advertisement.body_type
    fill_in 'Color', with: @advertisement.color
    fill_in 'Engine capacity', with: @advertisement.engine_capacity
    fill_in 'Fuel', with: @advertisement.fuel
    fill_in 'Image', with: @advertisement.image
    fill_in 'Make', with: @advertisement.make
    fill_in 'Mileage', with: @advertisement.mileage
    fill_in 'Model', with: @advertisement.model
    fill_in 'Price', with: @advertisement.price
    fill_in 'Status', with: @advertisement.status
    fill_in 'User', with: @advertisement.user_id
    fill_in 'Year', with: @advertisement.year
    click_on 'Update Advertisement'

    assert_text 'Advertisement was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Advertisement' do
    visit advertisement_url(@advertisement)
    click_on 'Destroy this advertisement', match: :first

    assert_text 'Advertisement was successfully destroyed'
  end
end
