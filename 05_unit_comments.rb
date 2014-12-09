require 'pp'
require_relative 'curriculum'

# Require the Ruby file
#
# Print out the unit names with the comment counts
#
# Expected output
#
#   Orientation - 9
#   Rails Basics - 15
#   CRUD - 12

CURRICULUM[:units].each {|unit|
  count = 0
  unit[:lessons].each {|lesson|
    lesson[:occurrences].each {|occurrence, data|
      count += data[:comments].count
    }
  }
  puts "#{unit[:name]} - #{count}"
}
