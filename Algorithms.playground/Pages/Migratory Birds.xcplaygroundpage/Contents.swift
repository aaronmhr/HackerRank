//https://www.hackerrank.com/challenges/migratory-birds
import Foundation

func migratoryBirds(arr: [Int]) -> Int {
    var birds: [Int: Int] = [:]
    for birdId in arr {
        let updatedBirdCound = (birds[birdId] ?? 0) + 1
        birds.updateValue(updatedBirdCound, forKey: birdId)
    }
    
    var mostCommonBirdKey: [Int] = []
    var currentMaximumValue = 0
    for bird in birds {
        let birdValue = bird.value
        if birdValue > currentMaximumValue {
            currentMaximumValue = birdValue
            mostCommonBirdKey = [bird.key]
        } else if birdValue == currentMaximumValue {
            mostCommonBirdKey.append(bird.key)
        }
    }
    return mostCommonBirdKey.min() ?? 0
}


let arr1 = [1,1,2,2,2,3]
migratoryBirds(arr: arr1)


//func migratoryBirds(arr: [Int]) -> Int {
//    var birds: [Int: Int] = [:]
//    arr.forEach { birds[$0] = (birds[$0] ?? 0) + 1 }
//    return birds
//        .filter({ $0.value == birds.values.max() }).keys.min() ?? 0
//}
