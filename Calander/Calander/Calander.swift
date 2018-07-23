import Foundation


class Calander {
    
    func day(month:Int,day:Int,year:Int) -> Int {
        let y:Int = (year - (14 - month)) / 12;
        let x:Int = y + y/4 - y/100 + y/400;
        let m:Int = month + 12 * ((14 - month) / 12) - 2;
        let d:Int = (day + x + (31*m)/12) % 7;
        return d
    }
    
}
