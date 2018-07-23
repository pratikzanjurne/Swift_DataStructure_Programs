import Foundation
var data = [Hashing(),Hashing(),Hashing(),Hashing(),Hashing(),Hashing(),Hashing(),Hashing(),Hashing(),Hashing(),Hashing()]
var node = ReadFile()
var integerArray = [Int]()
integerArray = node.readFile()
var remainder:Int
for index in  0..<integerArray.count{
    remainder = integerArray[index] % 11
    if (data[remainder] == nil){
        data[remainder] = Hashing()
        data[remainder].addItem(data: integerArray[index])
    }else{
        data[remainder].addItem(data: integerArray[index])
    }
    for index in 0..<11{
        print(index)
        if data[index] != nil{
            data[index].display()
        }
    }
}
