require 'roo'
require 'sqlite3'

xlsx = Roo::Spreadsheet.open('./1.xlsx')

puts xlsx.info

puts lr = xlsx.sheet(0).last_row - 2

2.upto(lr).each do |r|
  puts '--------------------------------------'
  xlsx.sheet(0).row(r).each do |c|
    puts "|" + c.to_s + "|"
  end
end
