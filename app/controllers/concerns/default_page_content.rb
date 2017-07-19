module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
   before_filter :set_page_defaults
  end
  
  def set_page_defaults
    @page_title = "DevcampPortfolio | Casey Black"
    @seo_keywords = "Casey Black Portfolio"
  end 
end 