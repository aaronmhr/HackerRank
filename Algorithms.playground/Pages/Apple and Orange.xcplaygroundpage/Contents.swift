import Foundation
//https://www.hackerrank.com/challenges/apple-and-orange/problem

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    let validRange = s...t
    let applesInHouse = apples.filter { validRange.contains($0 + a) }
    let orangesInHouse = oranges.filter { validRange.contains($0 + b) }
    print(applesInHouse.count)
    print(orangesInHouse.count)
}

countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2, 2, 1], oranges: [5, -6])


