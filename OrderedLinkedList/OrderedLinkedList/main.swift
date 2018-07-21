import Foundation

var integerArray = [Int]()
var linkedList = LinkedList<Int>()
let filePath = "/Users/bridgelabz/Library/Mobile Documents/com~apple~TextEdit/Documents/data.txt"

do{
    let fileData = try String(contentsOfFile: filePath, encoding: String.Encoding.utf8)
    let data = Scanner(string: fileData)
    var pointer = 0
    while data.scanInt(&pointer){
        integerArray.append(pointer)
    }
}catch _ as NSError{
    print("Error occured.")
}
integerArray.sort()
for index in 0..<integerArray.count{
    linkedList.insertData(data:  integerArray[index])
}
linkedList.display()
print("Enter the element to be searched")
if let data = readLine(){
    if let data = Int(data){
        let result = linkedList.searchData(data: data)
        if result == true{
            print("The data is found")
            print("The list after removing data is")
            linkedList.removeData(data: data)
            linkedList.display()
            linkedList.writeData()
        }else{
            print("Data not found")
            linkedList.insertData(data: data)
            print("List after adding data is:")
            linkedList.display()
            linkedList.writeData()
        }
    }else{
        print("Enter the integer value.")
    }
}
