import Foundation

class QueueLinkedList<T>{
    var start:Node<T>?
    
    func insertData(data : T) {
        if self.start == nil{
            self.start = Node(data: data)
        }
        else
        {
            var lastNode = self.start
            while lastNode?.nextLink != nil{
                lastNode = lastNode?.nextLink
            }
            let newNode = Node(data: data)
            lastNode?.nextLink = newNode
        }
        
    }
    
    func getData() -> T? {
        if self.start == nil{
            Swift.print("Queue is empty...")
        }
        else{
            let dataNode = self.start
            let data = dataNode?.data
            self.start = dataNode?.nextLink
            return data
        }
        return nil
    }
    
    func print() {
        var lastNode = self.start
        Swift.print("  ",terminator:"")
        while lastNode?.nextLink != nil{
            Swift.print((lastNode?.data)!,terminator:"  ")
            lastNode = lastNode?.nextLink
        }
        
    }

}

class Node<T> {
     var data:T
    var nextLink:Node<T>?
    
    init(data:T){
        self.data = data
    }
}
