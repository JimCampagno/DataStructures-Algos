
//: ![](LeftRotation-1.png)
//: ![](LeftRotation-2.png)
let n = 5
let leftRotations = 4
let arr = [1, 2, 3, 4, 5]

let leftShift = leftRotations % n
let string = " "
var result = Array<String>(repeatElement(string, count: n))

for i in 0..<n {
    let index = (leftShift + i) % n
    let string = String(arr[index])
    result[i] = string
}

let output = result.joined(separator: " ")

print(output)







