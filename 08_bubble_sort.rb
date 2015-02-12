# using recursion
def bubble_sort(arr)
  arr2 = []
  changed = false
  while arr.empty? == false
    current = arr.shift
    if !(arr.empty?) && current > arr[0]
      arr2 << arr.shift
      changed = true
    end
    arr2 << current
  end
  changed ? (return bubble_sort(arr2)) : (return arr2)
end

#without recusion
def bubble_sort(arr)
  unsorted = true
  return arr if arr == []
  while unsorted
    unsorted = false
    for i in 0...((arr.length) - 1)
      if arr[i] > arr[i + 1]
        arr[i], arr[i+1] = arr[i + 1], arr[i]
        unsorted = true
      end
    end
  end
  return arr
end
