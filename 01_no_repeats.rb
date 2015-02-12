# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.

def no_repeats(year1, year2)
  (year1..year2).to_a.delete_if {|year| year.split('').uniq != year.split('')}
end

# or.. using helper method:

def no_repeats(year1, year2)
return (year1..year2).to_a.delete_if {|y| repeater?(y.to_s) }
end

def repeater?(year)
year.split('').uniq != year.split('') ? true : false
end
