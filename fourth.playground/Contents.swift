import UIKit
enum CarType {
    case sportCar
    case truck
}


class Car {
    let model: CarType  // модель авто
    var tankFullness: Float
    var numberOfPeople: Int
    
    init(model: CarType, tankFullness: Float, numberOfPeople: Int) {
        self.model = model
        self.tankFullness = tankFullness
        self.numberOfPeople = numberOfPeople
    }
    
    func smthHappend() {}
}

class Suzuki: Car {
    var color: UIColor
    let releaseYear: Int
    var window: Bool
    var engine: Bool
    
    init(color: UIColor, releaseYear: Int,window: Bool, engine: Bool) {
        self.window = window
        self.engine = engine
        self.color = color
        self.releaseYear = releaseYear
        super.init(model: CarType.sportCar, tankFullness: 100, numberOfPeople: 6)
    }
    
    override func smthHappend(){
        print("В машине  может находиться \(self.numberOfPeople) человек")
    }
}


var newCar = Suzuki(color: UIColor.black, releaseYear: 2015, window: true, engine: true)
print(newCar.smthHappend())

class FordTruck: Car {
    let wheelsAmount: Int
    let releaseYear: Int
    let loadCapacity: Float
    var window: Bool
    var engine: Bool
    
    
    init(releaseYear: Int,window: Bool, engine: Bool,wheelsAmount: Int,loadCapacity: Float) {
        self.wheelsAmount = wheelsAmount
        self.loadCapacity = loadCapacity
        self.window = window
        self.engine = engine
        self.releaseYear = releaseYear
        super.init(model: CarType.truck, tankFullness: 10000, numberOfPeople: 4)
    }
    
    override func smthHappend(){
        print("Грузоподьемность составляет \(self.loadCapacity) килограмм")
    }
}

var newTruck = FordTruck(releaseYear: 2009, window: false, engine: true, wheelsAmount: 16, loadCapacity: 1000000)

print(newTruck.smthHappend())
