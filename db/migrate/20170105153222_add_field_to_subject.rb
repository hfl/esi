class AddFieldToSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :journal_size, :integer
    add_column :subjects, :sum_impact, :decimal, precision: 7, scale: 3
    add_column :subjects, :av_impact, :decimal, precision: 5, scale: 4
  end
end
