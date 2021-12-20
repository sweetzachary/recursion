def fibs(n)
  arr = []
  a = 1
  b = 1
  n.times do |n|
    arr.push a
    a, b = b, a+b
  end
  arr
end

def fibs_rec(n)
  return Array.new(n, 1) if n <= 2
  
  prev = fibs_rec(n - 1)
  prev + [prev[-1] + prev[-2]]
end

puts fibs 15
puts fibs_rec 15