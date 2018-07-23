import  Foundation

let u = Calander()
let leapYear = leapyear()
print("Enter the month.")
if let month = readLine(){
    if let month = Int(month){
        print("Enter the year.")
        if let year = readLine(){
            if let year = Int(year){
                var months:[String] = [
                    "January", "February", "March",
                    "April", "May", "June",
                    "July", "August", "September",
                    "October", "November", "December"
                ]
                var days:[Int] = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
                if month == 2 && leapYear.checkleapyear(year: year) {
                    days[month] = 29
                }
                print("    \(months[month])   \(year) ")
                print("S   M   Tu  W   Th  F   S ")
                let d:Int = u.day(month:month,day: 1,year: year)
                //print(d)
                for index in 0..<d {
                print("   ",terminator:" ")
                }
                for index in 1...days[month]
                {
                    print(index , terminator:"  ")
                    if (((index + d) % 7 == 0) || (index == days[month])){
                    print()
                    }
                
                }
            }else {
                print("Enter the integer value.")
            }
        }
    }else{
        print("Enter the integer value.")
    }
}
