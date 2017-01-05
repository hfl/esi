require 'roo'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# add datas to subject.

Subject.create(title: '材料科学', content: '', journal_size: , sum_impact: , av_impact: )
Subject.create(title: '地球科学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '多学科', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '分子生物学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '工程学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '化学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '环境与生态学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '计算机科学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '精神病学心理学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '经济与商业', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '空间科学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '临床医学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '免疫学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '农业科学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '社会科学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '神经科学与行为学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '生物&生物化学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '数学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '微生物学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '物理学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '药理学与毒理学', content: '', journal_size: , sum_impact: , av_impact:)
Subject.create(title: '植物学与动物学', content: '', journal_size: , sum_impact: , av_impact:)

# add journals

xlsx = Roo::Spreadsheet.open('/home/hfl/projects/rb/rails/esi/db/1.xlsx')

puts lr = xlsx.sheet(0).last_row - 2

2.upto(lr).each do |r|
  j = xlsx.sheet(0).row(r)
  Journal.create(subject_id: 1, rank: j[0], full_journal_title: j[1], jcr_abbreviated_title: j[2], issn: j[3], total_cites: j[4], journal_impact_factor: j[5], impact_factor_without_journal_self_cites: j[6],  five_years_impact_factor: j[7], immediacy_index: j[8], citable_items: j[9], cited_half_life: j[10], citing_half_life: j[11], eigenfactor_score: j[12], article_influence_score: j[13], article_in_citable_items: j[14], average_journal_impact_factor_percentile: j[15], normalized_eigenfactor: j[16])
end
