class PagesController < ApplicationController
  def home
    @portfolio_items = Portfolio.all
    @Bl
  end

  def about
  end

  def contact
  end
end
