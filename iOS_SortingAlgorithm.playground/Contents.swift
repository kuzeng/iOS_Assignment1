// merge sort
let array = [7, 2, 6, 3, 9, 6, 2]

let count = 3/2

func mergeSort(_ array: [Int]) -> [Int] {
    // split the array  (divide step)
    guard array.count > 1 else {
        return array
    }
    let middleIndex = array.count / 2
    
    // keep spliting  (divide step)
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    
    return merge(leftArray, rightArray)
}

// conquer step
func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    
    var orderedArray: [Int] = []
    
    // merging logic goes here!
    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            orderedArray.append(left[leftIndex])
            leftIndex += 1
        } else {
            orderedArray.append(right[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex < left.count {
        orderedArray.append(left[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < right.count {
        orderedArray.append(right[rightIndex])
        rightIndex += 1
    }
    
    return orderedArray
}

print(mergeSort(array))

