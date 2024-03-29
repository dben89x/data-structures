require 'pp'
require_relative 'curriculum.rb'

# Require the Ruby file
#
# Print out the date of each occurrence of each lesson
#
# Expected output
#
#   Orientation
#     Name Games
#       g4 on 2013-05-08
#       g5 on 2013-06-08
#       g6 on 2013-07-08
#       g7 on 2013-08-08
#     Mind Maps
#       g4 on 2013-09-08
#       g5 on 2013-10-08
#       g6 on 2013-11-08
#       g7 on 2013-12-08
#     Sequence Diagrams
#       g4 on 2014-01-08
#       g5 on 2014-02-08
#       g6 on 2014-03-08
#       g7 on 2014-04-08
#   Rails Basics
#     Controllers
#       g4 on 2013-05-08
#       g5 on 2013-06-08
#       g6 on 2013-07-08
#       etc...

CURRICULUM[:units].each {|unit|
  puts unit[:name]
  unit[:lessons].each {|lesson|
    puts "\t#{lesson[:name]}"
    lesson[:occurrences].each {|occurrence, data|
      puts "\t\t#{data[:cohort][:name]} on #{occurrence}"
    }
  }
}
