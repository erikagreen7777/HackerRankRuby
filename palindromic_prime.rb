require 'prime'

n = gets.to_i

# This version only works with Ruby 2.7+. HackerRank is still running 2.6, so I had to chain select and map.
# palindrome_prime = -> (n) do
    # print 2.upto(Float::INFINITY).lazy.filter_map {|i| 
    #     if i.prime? and i.to_s == i.to_s.reverse 
    #         i 
    #     end
    # }.first(n)
# end

print 2.upto(Float::INFINITY).lazy
    .select {|i| 
        if i.prime? and i.to_s == i.to_s.reverse 
            i 
        end}
    .map {|i| i}.first(n)

