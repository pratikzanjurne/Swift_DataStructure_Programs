/*
 *  Purpose - To create Ordered list isung linked list.
 *  @author  Pratik Zanjurne
 *  @version 4.0
 *  @since   24-07-2018
 */

import Foundation

var integerArray = [Int]()
var linkedList = LinkedList<Int>()

integerArray = linkedList.readData()
integerArray.sort()
for index in 0..<integerArray.count{
    //print(integerArray[index])
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
