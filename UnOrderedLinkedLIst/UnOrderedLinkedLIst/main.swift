import Foundation

 let filePath = "/Users/bridgelabz/Library/Mobile Documents/com~apple~TextEdit/Documents/data.txt"
var linkedList = LinkedList<String>()
do{
    let fileData = try String(contentsOfFile: filePath, encoding: String.Encoding.utf8)
     let data = fileData.split(separator: " ")

        for index in 0..<data.count{
        linkedList.insertData(data: String(data[index]))
    }
    linkedList.display()
    print("Enter the word to search.")
    var word = readLine()!
    var result = linkedList.searchData(data: word)
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

}catch _ as NSError{
    print("Error occured.")
}

