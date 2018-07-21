import Foundation
let path = "/Users/bridgelabz/Library/Mobile Documents/com~apple~TextEdit/Documents/data.txt"
let file: FileHandle? = FileHandle(forUpdatingAtPath: path)
if file == nil {
    print("File open failed")
} else {
    let contents = "I have done it well......hi"
    //let string = ("I am fine............... are you?" as NSString).data(using: String.Encoding.utf8.rawValue)
    //file?.write
    
   try contents.write(toFile: path, atomically: true, encoding: String.Encoding.utf8)
   // file?.closeFile()
//let file1: FileHandle? = FileHandle(forUpdatingAtPath: path)
    //try contents.
   let databuffer = file?.readDataToEndOfFile()
    let text = NSString(data: databuffer!, encoding: String.Encoding.utf8.rawValue)
    print(text!)
    file?.closeFile()
    let scanner = Scanner(string: <#T##String#>)
}
