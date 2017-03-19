import Foundation
//: ![](Arrays-DS.png)

let arr = [1, 4, 3, 2]


var i = arr.count - 1

var result = ""
// O(n) to reverse the array
// O(n) in iterating through the array
for number in arr.reversed() {
    let string = String(number)
    // O(n^2) with the following operation (is this not the case with Swift?)
    result += string + (i == 0 ? "" : " ")
    i -= 1
}

// total is O(2n + n^2), take away the constants along with the least domintant
// that leaves us with n^2.

// perhaps building an array of characters would bring this back to O(n)

print(result)







