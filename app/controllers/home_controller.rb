class HomeController < ApplicationController
  def index
  end

  def search
    path = params[:path].strip
    keyword = params[:keyword].strip
    if keyword == ""
      @journals = "nokeyword"
    else
      if path == "0"
        @journals = Journal.where(["full_journal_title like ?", "%#{keyword}%"]).page params[:page]
      else
        @journals = Journal.where(["issn like ?", "%#{keyword}%"]).page params[:page]
      end
    end
  end
end
