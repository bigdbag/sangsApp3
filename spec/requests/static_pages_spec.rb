require 'spec_helper'

describe "Static pages" do
	
  describe "Home page" do

    it "should have the h1 'My Home" do
      visit root_path
      page.should have_selector('h1', text: 'My Home')
    end

    it "should have the base title" do
      visit root_path
      page.should have_selector('title',
                        text: "Sang's Rails Site")
    end

    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', text: '| Home')
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', text: 'Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title',
                        text: "Sang's Rails Site | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Me'" do
      visit about_path
      page.should have_selector('h1', text: 'About Me')
    end

    it "should have the title 'About Me'" do
      visit about_path
      page.should have_selector('title',
                    text: "Sang's Rails Site | About Me")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                    text: "Sang's Rails Site | Contact")
    end
  end
end