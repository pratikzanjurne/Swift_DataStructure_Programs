/*
 *  Purpose - To create and print hashtable.
 *  @author  Pratik Zanjurne
 *  @version 4.0
 *  @since   24-07-2018
 */

import Foundation

var data:[Hashing<Int>?] = [Hashing<Int>(),Hashing<Int>(),Hashing<Int>(),Hashing<Int>(),Hashing<Int>(),Hashing<Int>(),Hashing<Int>(),Hashing<Int>(),Hashing<Int>(),Hashing<Int>(),Hashing<Int>()]
var fileData = Hashing<Int>()
var integerArray = [Int]()
var remainder:Int

integerArray = fileData.readFile()

for index in  0..<integerArray.count{
    remainder = integerArray[index] % 11
    if (data[remainder]?.start == nil){
        data[remainder] = Hashing()
        data[remainder]?.addItem(data: integerArray[index])
    }else{
        data[remainder]?.addItem(data: integerArray[index])
    }
}

for index in 0...10{
    print("\(index) ----" , terminator:" " )
    data[index]?.display()
}
