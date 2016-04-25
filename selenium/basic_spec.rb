require 'selenium-webdriver'
require_relative '../spec_helper'



describe 'Basic Spec test', smoke:true, regression:true, type: :share_browser do

  before :each do
    $login_page.default_login
    @main_page = $main_page
  end

  #This scenario goes to the main page and verify the new menu title is displayed and clicking on it leads to Menu list Yum page#
  it ' Should Go to Main Page and New Menu title should be displayed and clicked on successfully lead to Menu List page' do
    @main_page.load
    @main_page.title_text.is_displayed.should eq 'True'
    @main_page.click_new_menu
    @menu_list_page.title_text.should eq 'Menu List - Yum'
  end

end