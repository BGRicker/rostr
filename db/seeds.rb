require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'rocketeers.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    puts row.to_hash
end

csv.each do |row|
  t = Employee.new
  t.role = row['Focus Area']
  t.name = row['Name']
  t.location = row['Location']
  t.full_time = row['Full-time?']
  t.save
end

puts "There are now #{Employee.count} rows in the employee table"
