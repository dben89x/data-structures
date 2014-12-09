require 'pp'
require_relative 'curriculum'
require 'json'

json = File.read('curriculum.json')
curriculum = JSON.parse(json)

# Require json and parse the json file
#
# Print out the number of comments next to the occurrence
#
# Expected output
#
#   Orientation
#     Name Games
#       g4 on 2013-05-08 - 0
#       g5 on 2013-06-08 - 0
#       g6 on 2013-07-08 - 0
#       g7 on 2013-08-08 - 3
#     Mind Maps
#       g4 on 2013-09-08 - 1
#       g5 on 2013-10-08 - 2
#       g6 on 2013-11-08 - 0
#       g7 on 2013-12-08 - 1
#     Sequence Diagrams
#       g4 on 2014-01-08 - 1
#       g5 on 2014-02-08 - 1
#       g6 on 2014-03-08 - 0
#       g7 on 2014-04-08 - 0
#   Rails Basics
#     Controllers
#       g4 on 2013-05-08 - 0
#       g5 on 2013-06-08 - 0
#       etc...

curriculum["units"].each {|unit|
  puts unit["name"]
  unit["lessons"].each {|lesson|
    puts "\t#{lesson["name"]}"
    lesson["occurrences"].each {|occurrence, data|
      puts "\t\t#{data["cohort"]["name"]} on #{occurrence} - #{data["comments"].count}"
    }
  }
}
