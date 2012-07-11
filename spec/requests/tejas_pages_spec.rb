require 'spec_helper'

describe "TejasPages" do
  describe "Home" do
    before (:each) do 
      visit '/tejas_page/home'      
    end

    it "should have the content 'Home'" do
		  page.should have_content("Home")
    end
    it "should have the header saying 'Home'" do
		  page.should have_selector('h1', :text => "Home")
    end

    it "should have title 'Home'" do
      page.should have_selector('title', :text => "Home")
    end
 
  end

  describe "Contact" do
    before (:each) do
      visit '/tejas_page/contact'
    end

    it "should have the content 'Contact Info'" do
      page.should have_content("Contact")
    end

    it "should have the header saying 'Contact Info'" do
      page.should have_selector('h1', :text => "Contact")
    end

    it "should have title 'Contact Info'" do
      page.should have_selector('title', :text => "Contact")
    end

  end

end
