import Foundation
//https://www.hackerrank.com/challenges/divisible-sum-pairs

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var pairs = 0
    func updatePairs() {
        pairs += 1
    }
    
    for (index, i) in ar.enumerated() {
        for j in ar.suffix(ar.count - index - 1 ) {
            (i + j).isMultiple(of: k) ? updatePairs() : ()
        }
    }
    return pairs
}

let ar = [1,3,2,6,1,2]// [1,2,3,4,5,6]
let k = 3//5

divisibleSumPairs(n: ar.count, k: k, ar: ar)
