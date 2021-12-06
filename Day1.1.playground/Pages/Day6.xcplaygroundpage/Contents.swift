//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// new lanternfish every 7 days

let input = """
5,1,1,4,1,1,4,1,1,1,1,1,1,1,1,1,1,1,4,2,1,1,1,3,5,1,1,1,5,4,1,1,1,2,2,1,1,1,2,1,1,1,2,5,2,1,2,2,3,1,1,1,1,1,1,1,1,5,1,1,4,1,1,1,5,4,1,1,3,3,2,1,1,1,5,1,1,4,1,1,5,1,1,5,1,2,3,1,5,1,3,2,1,3,1,1,4,1,1,1,1,2,1,2,1,1,2,1,1,1,4,4,1,5,1,1,3,5,1,1,5,1,4,1,1,1,1,1,1,1,1,1,2,2,3,1,1,1,1,1,2,1,1,1,1,1,1,2,1,1,1,5,1,1,1,1,4,1,1,1,1,4,1,1,1,1,3,1,2,1,2,1,3,1,3,4,1,1,1,1,1,1,1,5,1,1,1,1,1,1,1,1,4,1,1,2,2,1,2,4,1,1,3,1,1,1,5,1,3,1,1,1,5,5,1,1,1,1,2,3,4,1,1,1,1,1,1,1,1,1,1,1,1,5,1,4,3,1,1,1,2,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,3,3,1,2,2,1,4,1,5,1,5,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,5,1,1,1,4,3,1,1,4
"""

print("hi")

let comps = input.components(separatedBy: ",").compactMap(Int.init)

func begin(days: Int, input: [Int]) {
    
    var initial = input
    var extra = 0
    for i in 0...days {
        print("Day \(i)")
        
        while extra > 0 {
            initial.append(8)
            extra -= 1
            print(extra)
        }
        
        for (index, _) in initial.enumerated() {
            var c = initial[index]

            if c == 0 {
                c = 6
                extra += 1
                print("increasing, as c was 0")
                
            } else {
                c -= 1
            }
            
            initial[index] = c
        }
    }
    
    print("answer is \(initial.count)")
}

//begin(days: 18, input: [3,4,3,1,2])
begin(days: 80, input: comps)
