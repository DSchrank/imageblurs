
arr = [1,2,3,4,5]   # given an arbitrary array
puts arr

temparr = []
for x in 0..(arr.length-1)   # or: arr.length.times
   temparr.push(arr.pop)
end
arr = temparr

puts arr
