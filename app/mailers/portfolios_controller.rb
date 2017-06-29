class PortfoliosController < ApplicationController
def index
  @portfolio_item = Portfolio.all
end

  def new
  end
end
