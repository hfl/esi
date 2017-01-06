class JournalsController < ApplicationController
  before_action :set_journal, only: [:show]
  before_action :set_subject, only: [:index]

  # GET /journals
  # GET /journals.json
  def index
    @journals = @subject.journals.page params[:page]
  end

  # GET /journals/1
  # GET /journals/1.json
  def show
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject
      @subject = Subject.find(params[:subject_id])
    end
    
    def set_journal
      @journal = Journal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def journal_params
      params.require(:journal).permit(:subject_id, :rank, :full_journal_title, :jcr_abbreviated_title, :issn, :total_cites, :journal_impact_factor, :impact_factor_without_journal_self_cites, :five_years_impact_factor, :immediacy_index, :citable_items, :cited_half_life, :citing_half_life, :eigenfactor_score, :article_influence_score, :article_in_citable_items, :average_journal_impact_factor_percentile, :normalized_eigenfactor)
    end
end
