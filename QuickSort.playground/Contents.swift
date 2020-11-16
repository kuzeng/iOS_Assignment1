func quicksortHoare<T: Comparable>(_ a: inout [T], low: Int, high: Int) {
  if low < high {
    let p = partitionHoare(&a, low: low, high: high)
    quicksortHoare(&a, low: low, high: p)
    quicksortHoare(&a, low: p + 1, high: high)
  }
}

func partitionHoare<T: Comparable>(_ a: inout [T], low: Int, high: Int) -> Int {
  let pivot = a[(low + high) / 2]
  var i = low
  var j = high

  while true {
    while a[j] > pivot {
        j -= 1
    }
    while a[i] < pivot {
        i += 1
    }

    if i < j {
        a.swapAt(i, j)
        i += 1
        j -= 1
    } else {
        return j
    }
  }
}

var list = [ 8, 0, 3, 9, 2, 14, 10, 27, 1, 5, 8, -1, 26 ]
quicksortHoare(&list, low: 0, high: list.count - 1)
print(list)  // show the results
