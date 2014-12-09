require 'pp'
require_relative 'curriculum'

# Require the Ruby file
#
# Print out the names of all the commenters
#
# Expected output
#
#   Julia Hilll
#   Price Bayer
#   Jake Hyatt
#   Lafayette Little
#   Kelvin Howell
#   Duane Tillman
#   Jake Hyatt
#   Lafayette Little
#   Duane Tillman
#   Miss Hadley Mueller
#   Price Bayer
#   Vicente Bashirian
#   Jake Hyatt
#   Julia Hilll
#   Lafayette Little
#   Eloy Reichert
#   Aiyana Fritsch
#   Aurelio Abbott
#   Jake Hyatt
#   Jules Herzog
#   Julia Hilll
#   etc...

CURRICULUM[:units].each {|unit|
  unit[:lessons].each {|lesson|
    lesson[:occurrences].each {|occurrence, data|
      data[:comments].each {|comment|
        puts comment[:user][:name]
      }
    }
  }
}
