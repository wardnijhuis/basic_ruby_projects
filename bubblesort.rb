def bubble_sort(arr)
  n = arr.size
  while (true) do
    swapped = false
    for i in 1...n do
      if arr[i-1] > arr[i] then
        temp = arr[i-1]
        arr[i-1] = arr[i]
        arr[i] = temp
        swapped = true
      end
    end
    if (!swapped) then
      break
    end
  end
  return arr
end
