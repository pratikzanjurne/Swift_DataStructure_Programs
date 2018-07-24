/*
 *  Purpose - To create Unordered list using linked list.
 *  @author  Pratik Zanjurne
 *  @version 4.0
 *  @since   24-07-2018
 */
import Foundation

var linkedList = LinkedList<String>()
var data = linkedList.readData()
for index in 0..<data.count{
    linkedList.insertData(data: String(data[index]))
}
linkedList.display()
print("Enter the word to search.")
let word:String = readLine()!
let result = linkedList.searchData(data: word)
if result == true{
    print("The word is found in the list.")
    print("The list after removing the word is :")
    linkedList.removeData(data: word)
    linkedList.display()
    linkedList.writeData()
}else{
    print("Your entered word is not found in the list.")
    print("The list after the adding the word is.")
    linkedList.insertData(data: word)
    linkedList.display()
    linkedList.writeData()
}
