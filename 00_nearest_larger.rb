# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.

def nearest_larger(arr, i)
  count = 1
  while i - count >= 0 || i + count < arr.length
    return i - count if arr[i-count] > arr[i] && i-count >= 0
    return i + count if arr[i+count] > arr[i] && i+count < arr.length
    count += 1
  end
  nil
end
