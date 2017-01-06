require 'roo'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# add datas to subject.

x_subj = Roo::Spreadsheet.open("/home/hfl/projects/ruby/ruby2.3.3/rails/esi/db/0.xlsx")

2.upto(23).each do |r|
  subj = x_subj.sheet(0).row(r)
  Subject.create(title: subj[0], content: '', journal_size: subj[1], sum_impact: subj[2], av_impact: subj[3])
end

puts 'Subject Imported.'

# add journals

1.upto(22) do |n|
  xlsx = Roo::Spreadsheet.open('/home/hfl/projects/ruby/ruby2.3.3/rails/esi/db/' + n.to_s + '.xlsx')

  puts lr = xlsx.sheet(0).last_row - 2

  2.upto(lr).each do |r|
    j = xlsx.sheet(0).row(r)
    Journal.create(subject_id: n, rank: j[0], full_journal_title: j[1], jcr_abbreviated_title: j[2], issn: j[3], total_cites: j[4], journal_impact_factor: j[5], impact_factor_without_journal_self_cites: j[6],  five_years_impact_factor: j[7], immediacy_index: j[8], citable_items: j[9], cited_half_life: j[10], citing_half_life: j[11], eigenfactor_score: j[12], article_influence_score: j[13], article_in_citable_items: j[14], average_journal_impact_factor_percentile: j[15], normalized_eigenfactor: j[16])
  end
end

puts "Journal imported."
