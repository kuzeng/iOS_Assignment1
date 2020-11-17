// selection sort

func selectionSort(_ array: [Int]) -> [Int] {
  guard array.count > 1 else { return array }  // 1

  var a = array                    // 2

  for i in 0 ..< a.count - 1 {     // 3
    var lowest = i
    for j in i + 1 ..< a.count {   // 4
      if a[j] < a[lowest] {
        lowest = j
      }
    }

    if i != lowest {               // 5
      a.swapAt(i, lowest)
    }
  }
  return a
}

let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
selectionSort(list)
