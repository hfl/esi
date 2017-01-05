class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.references :subject, index: true, foreign_key: true
      t.integer :rank
      t.string :full_journal_title
      t.string :jcr_abbreviated_title
      t.string :issn
      t.integer :total_cites
      t.decimal :journal_impact_factor, precision: 5, scale: 3
      t.decimal :impact_factor_without_journal_self_cites, precision: 5, scale: 3
      t.decimal :five_years_impact_factor, precision: 5, scale: 3
      t.decimal :immediacy_index, precision: 5, scale: 3
      t.integer :citable_items
      t.string :cited_half_life
      t.string :citing_half_life
      t.decimal :eigenfactor_score, precision: 6, scale: 5
      t.decimal :article_influence_score, precision: 5, scale: 3
      t.decimal :article_in_citable_items, precision: 5, scale: 2
      t.decimal :average_journal_impact_factor_percentile, precision: 5, scale: 3
      t.decimal :normalized_eigenfactor, precision: 6, scale: 4

      t.timestamps null: false
    end
  end
end
