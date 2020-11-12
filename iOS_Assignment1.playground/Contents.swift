//func findCharFrequency(word: String) -> Dictionary<Character, Int> {
//    var charDict: [Character: Int] = [:]
//    for char in word {
//        if charDict[char] == nil {
//            charDict[char] = 1
//        } else {
//            charDict[char]! += 1
//        }
//    }
//    return charDict
//}
//
//print(findCharFrequency(word: "INDIA"))




//calculate fibo

func fib(_ N: Int) -> Int {
   if N <= 1 {
       return N
   }

   return fib(N-1) + fib(N-2)
}

func isPrime(_ N: Int) -> Bool {
    if N <= 2 {
        return true
    }
    
    for i in 2..<N {
        if N % i == 0 {
            return false
        }
    }
    
    return true
}

isPrime(2)
isPrime(13)
isPrime(4)
isPrime(20)


func factorial(_ N: Int) -> Int {
    if N <= 1 {
        return N
    }
    
    return N * factorial(N - 1)
}

factorial(8)

