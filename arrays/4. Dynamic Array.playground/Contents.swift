//: ![](DynamicArray-1.png)
//: ![](DynamicArray-2.png)
//: ![](DynamicArray-3.png)  








let input = readLine()!.characters.split(separator: " ").map { String($0) }.flatMap { Int($0) }

let n = input[0]
let numberOfQueries = input[1]
var queries: [[Int]] = []
var lastAns = 0

for _ in 0..<numberOfQueries {
    var line = readLine()!.characters.split(separator: " ").map { String($0) }.flatMap { Int($0) }
    queries.append(line)
}

var seqList: [[Int]] = Array(repeating: [Int](), count: n)

for query in queries {
    
    let value = query[0]
    let x = query[1]
    let y = query[2]
    
    let i = x ^ lastAns
    let index = i % n
    var sequence = seqList[index]
    
    if value == 1 {
        sequence.append(y)
        seqList[index] = sequence
    }
    
    if value == 2 {
        let size = sequence.count
        let seqInex = y % size
        lastAns = sequence[seqInex]
        print(lastAns)
    }
    
}