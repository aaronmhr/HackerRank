import Foundation
//https://www.hackerrank.com/challenges/kangaroo/problem

//    'x1 + v1*t = x2 + v2*t'
func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    let time = Double(x2 - x1) / Double(v1 - v2)
    if time > 0, time.truncatingRemainder(dividingBy: 1) == 0 {
        return "YES"
    } else {
        return "NO"
    }
}

// MARK: - Testing
typealias Scenario = (x1: Int, v1: Int, x2: Int, v2: Int)
let input: Scenario = (0, 3, 4, 2)
//let input: Scenario = (0, 2, 5, 3)
//let input: Scenario = (21, 6, 47, 3)
let ans = kangaroo(x1: input.x1, v1: input.v1, x2: input.x2, v2: input.v2)
print(ans)
