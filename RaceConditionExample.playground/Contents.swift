import UIKit

import UIKit

class SafeATM {
var number = 0
let concurrentQueue = DispatchQueue(label: "Concurrent Queue", attributes: .concurrent)
    func addNumber(_ new:Int)-> Int {
        var newNumber:Int = 0
        concurrentQueue.sync {
            print("start perform addNumber base \(number) add \(new)")
            Thread.sleep(forTimeInterval: Double.random(in: 0...3))
            newNumber = self.number + new
            print("finish perform addNumber \(new) result \(newNumber)")
        }
        return newNumber
    }
    func writeNumber(_ new:Int) {
        print("ready to write base from \(number) to \(new) and waiting...")
        concurrentQueue.async(flags: .barrier) {
            print("start perform write base to \(new)")
            Thread.sleep(forTimeInterval: Double.random(in: 0...3))
            print("finish perform write base to \(new)")
            self.number = new
        }
    }
}
class ATM {
    var number = 0
    func addNumber(_ new:Int)-> Int {
        var newNumber:Int = 0
            print("start perform addNumber base \(number) add \(new)")
            Thread.sleep(forTimeInterval: Double.random(in: 0...3))
            newNumber = self.number + new
            print("finish perform addNumber \(new) result \(newNumber)")
        return newNumber
    }
    func writeNumber(_ new:Int) {
        print("ready to write base from \(number) to \(new) and waiting...")
        print("start perform write base to \(new)")
        Thread.sleep(forTimeInterval: Double.random(in: 0...3))
        print("finish perform write base to \(new)")
        self.number = new
        
    }
}

let atm = ATM()
for i in 0...10 {
    DispatchQueue.global().async {
        if i == 5 {
            atm.writeNumber(10)
        } else {
        atm.addNumber(i)
        }
    }
}

//let safeAtm = SafeATM()
//for i in 0...10 {
//    DispatchQueue.global().async {
//        if i == 5 {
//            safeAtm.writeNumber(10)
//        } else {
//        safeAtm.addNumber(i)
//        }
//    }
//}
