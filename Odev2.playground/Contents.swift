import UIKit

class Functions {
    // Odev 1
    func convertFahrenheit(temperature: Double) -> Double {
        let result = (temperature * 1.8) + 32
          return result
    }
    
    // Odev 2
    func rectangle(rectangleLength:Int, rectangleWidth:Int){
        let result = 2 * (rectangleLength + rectangleWidth)
        print(result)
    }
    
    // Odev 3
    func factorial(x: Int) -> Int {
        var result = 1
        if(x > 0) {
            for i in 1...x {
                result *= i
            }
        }
        return result
    }
    
    // Odev 4
    func findOccurenceInWord(word:String, letter:String) -> Int{
        var counter=0
        for char in word{
            if(char.lowercased() == letter.lowercased()){
                counter += 1
            }
        }
        return counter
    }
    
    // Odev 5
    func sumOfAngles(edge:Int) -> Int {
        var result = (edge - 2) * 180
        return result
    }
    
    // Odev 6
    func salary(days:Int) -> Int {
        var workTime = days * 8
        var salary:Int = 0
        
        if(workTime > 160){
            salary = 1600
            var overTime = (workTime - 160)
            var shift = overTime * 20
            
            var result = salary + shift
            return result
        }
        return workTime * 10
    }
    
    // Odev 7
    func charge(quota:Int) -> Int {
        var total = 100
        
        if(quota > 50){
            var overQuota = quota - 50
            var result = total + (overQuota * 4)
            return result
        }
        
        return total
    }
}

let f = Functions()

// Odev 1
var result1 = f.convertFahrenheit(temperature: 5)
print(result1)

// Odev 2
f.rectangle(rectangleLength: 5, rectangleWidth: 10)

// Odev 3
var result3 = f.factorial(x: 4)
print(result3)

// Odev 4
var result4 = f.findOccurenceInWord(word: "batuhan", letter: "a")
print(result4)

// Odev 5
var result5 = f.sumOfAngles(edge: 4)
print(result5)

// Odev 6
var result6 = f.salary(days: 24)
print(result6)

// Odev 7
var result7 = f.charge(quota: 55)
print(result7)
