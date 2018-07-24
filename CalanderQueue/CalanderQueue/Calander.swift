import  Foundation

class Calander {
    
    static var months:[String] = [
        "January", "February", "March",
        "April", "May", "June",
        "July", "August", "September",
        "October", "November", "December"
    ]
    static var days:[Int] = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var queueList = QueueLinkedList<Any>()
    func checkLeapYear(year:Int)-> Bool{
        
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
    
    func day(month:Int,day:Int,year:Int) -> Int {
        let y:Int = year - (14 - month) / 12;
        let x:Int = y + y/4 - y/100 + y/400;
        let m:Int = month + 12 * ((14 - month) / 12) - 2;
        let d:Int = (day + x + (31*m)/12) % 7;
        return d
    }
    
    func creatCalander(month:Int,year:Int){
        
        if month == 2 && checkLeapYear(year: year) {
            Calander.days[month] = 29
        }
        let d:Int = day(month:month,day: 1,year: year)
        
        for index in 0..<d{
            queueList.insertData(data: "\t")
        }
        for index in 1...Calander.days[month]
        {
            queueList.insertData(data: index)
            if (((index + d) % 7 == 0) || (index == Calander.days[month])){
                queueList.insertData(data: "\n")
            }
        }
    }
    
    
    func printCalander() {
        queueList.print()
    }

}
