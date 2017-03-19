
//: ![](2D-Array-DS-1.png)
//: ![](2D-Array-DS-2.png)
//: ![](2D-Array-DS-3.png)


// arr represents the input, output should be 19
let arr = [
    [1, 1, 1, 0, 0, 0],
    [0, 1, 0, 0, 0, 0],
    [1, 1, 1, 0, 0, 0],
    [0, 0, 2, 4, 4, 0],
    [0, 0, 0, 2, 0, 0],
    [0, 0, 1, 2, 4, 0],
]


let lastHourGlassColumn = arr.count - 2
let n = lastHourGlassColumn * lastHourGlassColumn
var index = 0
var max = 0
var hourGlassColumn = 0

for i in 0..<n {
    if hourGlassColumn == lastHourGlassColumn {
        index += 1
        hourGlassColumn = 0
    }
    
    let l = hourGlassColumn
    let m = l + 1
    let r = l + 2
    
    let topRow = arr[index]
    let middleRow = arr[index + 1]
    let bottomRow = arr[index + 2]

    let topRowTotal = topRow[l] + topRow[m] + topRow[r]
    let middleRowTotal = middleRow[m]
    let bottomRowTotal = bottomRow[l] + bottomRow[m] + bottomRow[r]
    
    let total = topRowTotal + middleRowTotal + bottomRowTotal
    
    if i == 0 { max = total }
    
    max = total > max ? total : max
    
    hourGlassColumn += 1
}

print(max)
