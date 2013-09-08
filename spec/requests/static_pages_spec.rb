require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'Liesl Wigand'" do
    	visit '/static_pages/home'
    	expect(page).to have_content('Liesl Wigand')
    end
  end

  describe "Help page" do
  	it "should have the content 'About'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('About')
  	end
  end

  describe "Fun Page" do
    it "should have the content 'FUN STUFF'" do
      visit '/static_pages/fun'
      expect(page).to have_content('FUN STUFF')
    end
  end
end
