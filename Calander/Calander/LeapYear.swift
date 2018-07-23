
import Foundation
class leapyear{
    
    var year:Int = 0
    
    func checkleapyear(year:Int)-> Bool{
        
        self.year = year
        if year % 4 == 0 {
            if year % 100 == 0 {
                if year % 400 == 0 {
                    return true
                }
                return false
            }
            return true
        }
        return false
    }
    
    
}

