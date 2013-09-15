require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Liesl Wigand: Computer Scientist, Graduate Student" }

  describe "Home Page" do
    it "should have the content 'Liesl Wigand'" do
    	visit '/static_pages/home'
    	expect(page).to have_content('Liesl Wigand')
    end
    it "should have the title ' Home'" do
      visit '/static_pages/home'
    end
    it "should have a footer containing 'Hosted by:'" do
      visit '/static_pages/home'
      expect(page).to have_content('Hosted by:')
    end
    it "should have a header containing 'Liesl Wigand: In Progress'" do
      visit '/static_pages/home'
      expect(page).to have_content('Liesl Wigand: In Progress')
    end
  end

  describe "Help page" do
  	it "should have the content 'About'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('About')
  	end
    it "should have the title 'Liesl Wigand: Computer Scientist, Graduate Student | About'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | About")
    end
    it "should have a footer containing 'Hosted by:'" do
      visit '/static_pages/help'
      expect(page).to have_content('Hosted by:')
    end
    it "should have a header containing 'Liesl Wigand: In Progress'" do
      visit '/static_pages/help'
      expect(page).to have_content('Liesl Wigand: In Progress')
    end
  end

  describe "Fun Page" do
    it "should have the content 'FUN STUFF'" do
      visit '/static_pages/fun'
      expect(page).to have_content('FUN STUFF')
    end
    it "should have the title 'Liesl Wigand: Computer Scientist, Graduate Student | Fun'" do
      visit '/static_pages/fun'
      expect(page).to have_title("#{base_title} | Fun")
    end
    it "should have a footer containing 'Hosted by:'" do
      visit '/static_pages/fun'
      expect(page).to have_content('Hosted by:')
    end
    it "should have a header containing 'Liesl Wigand: In Progress'" do
      visit '/static_pages/fun'
      expect(page).to have_content('Liesl Wigand: In Progress')
    end
  end

  describe "Fun Book Page" do
    it "should have the content 'Fun: Books'" do
      visit '/static_pages/subFunBooks'
      expect(page).to have_content('Fun: Books')
    end
    it "should have the title 'Liesl Wigand: Computer Scientist, Graduate Student | Fun'" do
      visit '/static_pages/subFunBooks'
      expect(page).to have_title("#{base_title} | Fun Books")
    end
    it "should have a footer containing 'Hosted by:'" do
      visit '/static_pages/subFunBooks'
      expect(page).to have_content('Hosted by:')
    end
    it "should have a header containing 'Liesl Wigand: In Progress'" do
      visit '/static_pages/subFunBooks'
      expect(page).to have_content('Liesl Wigand: In Progress')
    end
  end

  describe "Fun Comics Page" do
    it "should have the content 'Fun: Comics'" do
      visit '/static_pages/subFunComics'
      expect(page).to have_content('Fun: Comics')
    end
    it "should have the title 'Liesl Wigand: Computer Scientist, Graduate Student | Fun'" do
      visit '/static_pages/subFunComics'
      expect(page).to have_title("#{base_title} | Fun Comics")
    end
    it "should have a footer containing 'Hosted by:'" do
      visit '/static_pages/subFunComics'
      expect(page).to have_content('Hosted by:')
    end
    it "should have a header containing 'Liesl Wigand: In Progress'" do
      visit '/static_pages/subFunComics'
      expect(page).to have_content('Liesl Wigand: In Progress')
    end
  end

  describe "Fun Game Page" do
    it "should have the content 'Fun: Games'" do
      visit '/static_pages/subFunGames'
      expect(page).to have_content('Fun: Games')
    end
    it "should have the title 'Liesl Wigand: Computer Scientist, Graduate Student | Fun'" do
      visit '/static_pages/subFunGames'
      expect(page).to have_title("#{base_title} | Fun Games")
    end
    it "should have a footer containing 'Hosted by:'" do
      visit '/static_pages/subFunGames'
      expect(page).to have_content('Hosted by:')
    end
    it "should have a header containing 'Liesl Wigand: In Progress'" do
      visit '/static_pages/subFunGames'
      expect(page).to have_content('Liesl Wigand: In Progress')
    end
  end

end
