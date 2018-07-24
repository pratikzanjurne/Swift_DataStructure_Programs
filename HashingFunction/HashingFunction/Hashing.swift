import  Foundation

class Hashing<T:Comparable> {
    
    var start:Node<T>?
    let filePath = "/Users/bridgelabz/Documents/Pratik/Swift_DataStructure_Programs/HashingFunction/HashingFunction/data.txt"
    
    
    func addItem(data: T) {
        if self.start == nil
        {
            self.start = Node<T>(data: data)
        }
        else{
            var lastNode = self.start
            while lastNode?.nextLink != nil{
                lastNode = lastNode?.nextLink!
            }
            let newLink = Node(data: data)
            lastNode?.nextLink = newLink
        }
    }
    
    
    func display() {
            var dataNode = self.start
            while dataNode?.nextLink != nil{
                let val = dataNode?.data
                print("\(val!) ---->",terminator: " ")
                
                dataNode = dataNode?.nextLink!
            }
            if let val1 = dataNode?.data{
                print("\(val1)",terminator:" ")
            }
            print(" ")
    }
    
    func readFile()->[Int]{
        var integerArray = [Int]()
        let fileData = try! String(contentsOfFile: filePath, encoding: String.Encoding.utf8)
        let data = fileData.split(separator: " ")
        for index in 0...data.count-1{
            if let number = Int(data[index]){
                integerArray.append(number)
            }
        }
        return integerArray
    }


}
