require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('processes the user entries and determines if it a triangle') do
    visit('/')
    fill_in('length', :with => 3)
    fill_in('width', :with => 4)
    fill_in('height', :with => 5)
    click_button('Evaluate')
    expect(page).to have_content('It is a triangle!')
  end

  it('processes the user entries and returns the type of triangle') do
    visit('/')
    fill_in('length', :with => 3)
    fill_in('width', :with => 4)
    fill_in('height', :with => 5)
    click_button('Evaluate')
    expect(page).to have_content('scalene')
  end
end
