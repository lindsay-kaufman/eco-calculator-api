# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

csv_text = File.read(Rails.root.join('db', 'textiles.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
 t = Textile.new
 t.name = row['name']
 t.impact_score = row['impact_score']
 t.benchmark_score = row['benchmark_score']
 t.save
 puts "#{t.name}, #{t.impact_score}, #{t.benchmark_score}"
end

puts "There are now #{Textile.count} rows in the table"
