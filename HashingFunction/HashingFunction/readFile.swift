class ReadFile{
 
    
    
    func readFile()->[Int]{
    var integerArray = [Int]()
    let filePath = "/Users/bridgelabz/Library/Mobile Documents/com~apple~TextEdit/Documents/data.txt"
    
        let fileData = try! String(contentsOfFile: filePath, encoding: String.Encoding.utf8)
        let data = fileData.split(separator: ",")
        for index in 0..<data.count{
            integerArray.append(Int(data[index])!)
        }
    
    integerArray.sort()
    return integerArray
}

}
