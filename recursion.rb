def fibs(n)
  arr = []
  a = 1
  b = 1
  n.times do |n|
    arr.push b
    a, b = b, a+b
  end
  arr
end

puts fibs 15