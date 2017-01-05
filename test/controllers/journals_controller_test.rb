require 'test_helper'

class JournalsControllerTest < ActionController::TestCase
  setup do
    @journal = journals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:journals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create journal" do
    assert_difference('Journal.count') do
      post :create, journal: { article_in_citable_items: @journal.article_in_citable_items, article_influence_score: @journal.article_influence_score, average_journal_impact_factor_percentile: @journal.average_journal_impact_factor_percentile, citable_items: @journal.citable_items, cited_half_life: @journal.cited_half_life, citing_half_life: @journal.citing_half_life, eigenfactor_score: @journal.eigenfactor_score, five_years_impact_factor: @journal.five_years_impact_factor, full_journal_title: @journal.full_journal_title, immediacy_index: @journal.immediacy_index, impact_factor_without_journal_self_cites: @journal.impact_factor_without_journal_self_cites, issn: @journal.issn, jcr_abbreviated_title: @journal.jcr_abbreviated_title, journal_impact_factor: @journal.journal_impact_factor, normalized_eigenfactor: @journal.normalized_eigenfactor, rank: @journal.rank, subject_id: @journal.subject_id, total_cites: @journal.total_cites }
    end

    assert_redirected_to journal_path(assigns(:journal))
  end

  test "should show journal" do
    get :show, id: @journal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @journal
    assert_response :success
  end

  test "should update journal" do
    patch :update, id: @journal, journal: { article_in_citable_items: @journal.article_in_citable_items, article_influence_score: @journal.article_influence_score, average_journal_impact_factor_percentile: @journal.average_journal_impact_factor_percentile, citable_items: @journal.citable_items, cited_half_life: @journal.cited_half_life, citing_half_life: @journal.citing_half_life, eigenfactor_score: @journal.eigenfactor_score, five_years_impact_factor: @journal.five_years_impact_factor, full_journal_title: @journal.full_journal_title, immediacy_index: @journal.immediacy_index, impact_factor_without_journal_self_cites: @journal.impact_factor_without_journal_self_cites, issn: @journal.issn, jcr_abbreviated_title: @journal.jcr_abbreviated_title, journal_impact_factor: @journal.journal_impact_factor, normalized_eigenfactor: @journal.normalized_eigenfactor, rank: @journal.rank, subject_id: @journal.subject_id, total_cites: @journal.total_cites }
    assert_redirected_to journal_path(assigns(:journal))
  end

  test "should destroy journal" do
    assert_difference('Journal.count', -1) do
      delete :destroy, id: @journal
    end

    assert_redirected_to journals_path
  end
end
