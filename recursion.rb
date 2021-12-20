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

def merge_sort(arr)
  p arr
  return arr if arr.length == 1

  # sort
  halflen = arr.length / 2
  a = merge_sort(arr.first(halflen.ceil))
  b = merge_sort(arr.last(halflen.floor))
  # merge
  merge = []
  until (a + b).empty?
    if a.empty? || b.empty?
      p merge += a + b
      break
    end
    smaller = a.first < b.first ? a : b
    merge.push(smaller.first)
    smaller.shift
  end
  merge
end

a = Array(3..6).shuffle

puts 'FIBONACCI'
p fibs 15
p fibs_rec 15
puts 'MERGE SORT'
p a
p merge_sort a