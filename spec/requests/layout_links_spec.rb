require 'spec_helper'

describe "LayoutLinks" do
  
    it "should have a home page at '/'" do
      get '/'
      response.should have_selector("", :content => "Home")
    end
  
     it "should have a contact page at '/contact'" do
      get '/contact'
      response.should have_selector("title", :content => "Contact")
    end
    
     #it "should have an about page at '/about'" do
     # get '/about'
      #response.should have_selector("title", :content => "Kays App | About")
   # end
    
   # it "should have a help page at '/help'" do
    #  get '/help'
     # response.should have_selector("title", :content => "Kays App | Help")
    #end
    
     it "should have a sign-up page at '/signup'" do
      get '/signup'
      response.should have_selector("title", :content => "signin")
    end
    
    it "should have the right links on the layout" do
      visit root_path
      response.should have_selector('title', :content => "Home")
      click_link "About"
      #response.should have_selector('title', :content => "About")
      #click_link "Contact"
      response.should have_selector('title', :content => "Contact")
      click_link "Home"
      response.should have_selector('title', :content => "Home")
      click_link "Sign up now"
      response.should have_selector('title', :content => "signin")
      response.should have_selector('a[href="/"]>img')
    end
end