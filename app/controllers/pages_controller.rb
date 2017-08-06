class PagesController < ApplicationController
  def home
    @portfolio_items = Portfolio.all
    @Bl
  end

  def about
    @skills = Skill.all
  end

  def contact
  end
end
