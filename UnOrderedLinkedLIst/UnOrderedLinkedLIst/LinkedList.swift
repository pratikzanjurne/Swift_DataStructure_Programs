class LinkedList<T: Comparable>{
    
    let filePath = "/Users/bridgelabz/Documents/Pratik/Swift_DataStructure_Programs/UnOrderedLinkedLIst/UnOrderedLinkedLIst/data.txt"
    
    var start:Node<T>?
    
    
    func insertData(data: T) {
        if self.start == nil
        {
            self.start = Node<T>(data: data)
        }else{
            var lastNode = self.start
            while lastNode?.nextLink != nil{
                lastNode = lastNode?.nextLink!
            }
            let newLink = Node<T>(data: data)
            lastNode?.nextLink = newLink
        }
        
    }
    
    
    func removeData(data: T){
        var previousLink:Node<T>?
        if self.start == nil{
            print("The linked list is empty.")
        }else{
            var dataNode = self.start
            if self.start?.nextLink == nil{
                self.start = nil
            }
            else if self.start?.data == data{
                self.start? = (dataNode?.nextLink)!
            }
            while dataNode?.data != data && dataNode?.nextLink != nil{
                previousLink = dataNode!
                dataNode = dataNode?.nextLink
            }
            if dataNode?.data == data{
                previousLink?.nextLink = dataNode?.nextLink
            }
        }
    }
    
    
    func display() {
        if self.start == nil{
            print("The linked list is empty.")
        }else{
            var dataNode = self.start
            while dataNode != nil{
                if let val = dataNode?.data{
                    print(val)
                }
                dataNode = dataNode?.nextLink
            }
        }
    }
    
    func searchData(data: T)-> Bool{
        var dataNode = self.start
        if self.start == nil{
            print("The list is empty.")
        }else if start?.data == data{
            return true
        }
        else{
            while dataNode?.nextLink != nil && dataNode?.data != data{
                dataNode = dataNode?.nextLink
            }
            if dataNode?.data == data{
                return true
            }
        }
        return false
    }
    func writeData(){
        do {
            var data:String = ""
            var dataNode = self.start
            while dataNode != nil{
                if let val = dataNode?.data{
                    data += val as! String
                }
                dataNode = dataNode?.nextLink
                data += "\n"
            }
            try data.write(toFile: filePath, atomically: false, encoding: String.Encoding.utf8)
        }
        catch {
            print("ERROR")
        }
    }
    
    func readData() -> [Substring] {
        do{
            let fileData = try String(contentsOfFile: filePath, encoding: String.Encoding.utf8)
            var data = fileData.split(separator: " ")
            data = fileData.split(separator: "\n")
            return data 
        }
        catch{
            print("Error")
        }
        return data
    }
}

