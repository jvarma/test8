require 'spec_helper'

describe "Pages" do
	describe "Home" do
    	it "should have content 'onthego'" do
    		visit '/pages/home'
    		expect(page).to have_content('OnTheGo')
    	end

    	it "should have the right title" do
    		visit '/pages/home'
    		expect(page).to have_title("OnTheGo - Find places of interest around you")
    	end
  	end
end
