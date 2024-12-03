class HomeController < ApplicationController
  def about
    @page_title = "About us"
  end

  def contact
    @page_title = "Contact"
  end
end
