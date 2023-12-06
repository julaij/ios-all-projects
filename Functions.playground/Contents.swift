import UIKit

var greeting = "Hello, playground"
func sumAndAvg(numbers: Double){
    >(sum:Double, avg:Double){

        var total:Double = 0
        var total:Double
        for nummber in numbers {
            total+= number
        }
        avg = total/Double(numbers.count)
        
        return (total, avg)
    }
    let result = sumAndAvg(1,20.5,3,4.9,10)
    print("sum = \(result.sum)")
    print("Average = \(result.avg)")
}
