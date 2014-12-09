require 'pp'
require_relative 'curriculum'

# Print out the name of each curriculum unit and all the lesson names
#
# Expected output
#
#   Orientation
#     Name Games
#     Mind Maps
#     Sequence Diagrams
#   Rails Basics
#     Controllers
#     Models
#     Views
#     Migrations
#   CRUD
#     Create
#     Read
#     Update
#     Delete

CURRICULUM[:units].each {|unit|
  puts unit[:name]
  unit[:lessons].each {|lesson|
    puts "\t#{lesson[:name]}"
  }
}
