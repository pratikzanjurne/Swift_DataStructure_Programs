import  Foundation

class Hashing{
    
    var start:Node?
    
    func addItem(data: Int) {
        if self.start == nil
        {
            self.start = Node(data: data)
        }else{
            var lastNode = self.start
            while lastNode?.nextLink != nil{
                lastNode = lastNode?.nextLink!
            }
            let newLink = Node(data: data)
            lastNode?.nextLink = newLink
        }
        
    }
    
    
    func display() {
        if self.start == nil{
            print("The linked list is empty.")
        }else{
            var dataNode = self.start
            while dataNode != nil{
                let val = dataNode?.data
                print("\(String(describing: val)) ---->")
                
                dataNode = dataNode?.nextLink!
            }
            print(" ")
        }
    }
    
    init() {
        let obj = Hashing()
        obj.display()
    }
    
}
