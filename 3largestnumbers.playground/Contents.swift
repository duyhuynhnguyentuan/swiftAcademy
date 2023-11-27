import UIKit

// Given an array, return 3 largest numbers in ascending order

//the output will be 3(three) largest numbers that means we will need an array to store output

func threeLargestNumbers(array: [Int])-> [Int] {
    if array.isEmpty {
        return []
    }
    var result = Array(repeating: Int.min, count: 3)
    
    for num in array {
        rearrange(number: num, result: &result)
    }
    
    return result
}

func rearrange(number: Int, result: inout [Int]){
    var toBeInsertedIdx = -1
    if number > result[2] {
        toBeInsertedIdx = 2
    }
    else if number > result[1] {
        toBeInsertedIdx = 1
    }
    else if number > result[0] {
        toBeInsertedIdx = 0
    }else {
        return
        //get out the function and not do anything
    }
    var current = toBeInsertedIdx
    //swap
    while current > 0 {
        let temp = result[current - 1]
        result[current - 1 ] = result[toBeInsertedIdx]
        current  -= 1
        result[toBeInsertedIdx] = temp
    }
    result[toBeInsertedIdx] = number
}

let testCaseArray = threeLargestNumbers(array: [1, -4, -2 , 0])

print(testCaseArray)

