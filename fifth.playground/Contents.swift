import UIKit

protocol ConsolePrintable: CustomStringConvertible{
    func printDescription()
}
protocol Car {
    var isEngineOn: Bool {get set}
    var isWindowOpen: Bool {get set}
    var releaseYear: Int {get}
    var tankFullness: Float {get}
    var numberOfPeople: Int {get}
    
    mutating func changeWindowState() -> Bool
    mutating func changeEngineState() -> Bool
    func countOfPeople()
}
extension Car{
    func printFulness(){
        print("tank fullness is \(tankFullness)")
    }
}

class SportCar: Car, ConsolePrintable{
    func printDescription() {
        print(description)
    }
    
    var description: String{
        return String( String(self.isEngineOn) + " " + String(self.isWindowOpen) + " " + String(self.releaseYear) + " " + String(self.tankFullness) + " " + String(self.numberOfPeople) + " " + String(self.horsepower) + " " + String(self.maxSpeed))
    }
    
    var isEngineOn: Bool = false
    var isWindowOpen: Bool = false
    var releaseYear: Int = 0
    var tankFullness: Float = 0.0
    var numberOfPeople: Int = 0
    var horsepower: Int = 0
    var maxSpeed: Int = 0
    func changeWindowState() -> Bool{
        self.isWindowOpen = !isWindowOpen
        return self.isWindowOpen
    }
    func changeEngineState() -> Bool{
        self.isEngineOn = !isEngineOn
        return self.isEngineOn
    }
    func countOfPeople() {
        print("the car accommodates up to \(self.numberOfPeople) people")
    }
    func speedAndHosepovers(){
        print("the car acceleraters to \(self.maxSpeed) and has \(self.horsepower) horsepower")
    }
    init(isEngineOn: Bool, isWindowOpen: Bool, releaseYear: Int, tankFullness: Float, numberOfPeople:Int, horsepower: Int, maxSpeed: Int) {
        self.isEngineOn = isEngineOn
        self.isWindowOpen = isWindowOpen
        self.releaseYear = releaseYear
        self.tankFullness = tankFullness
        self.numberOfPeople = numberOfPeople
        self.horsepower = horsepower
        self.maxSpeed = maxSpeed
    }
    
}

class TruckCar: Car, ConsolePrintable {
    func printDescription() {
        print(description)
    }
    
    var description: String{
        return String( String(self.isEngineOn) + " " + String(self.isWindowOpen) + " " + String(self.releaseYear) + " " + String(self.tankFullness) + " " + String(self.numberOfPeople) + " " + String(self.loadCapacity) + " " + String(self.fuelConsumption))
    }
    
    
    var isEngineOn: Bool = false
    var isWindowOpen: Bool = false
    var releaseYear: Int = 0
    var tankFullness: Float = 0.0
    var numberOfPeople: Int = 0
    var loadCapacity: Int = 0
    var fuelConsumption: Float = 0.0
    
    func changeWindowState() -> Bool{
        self.isWindowOpen = !isWindowOpen
        return self.isWindowOpen
    }
    func changeEngineState() -> Bool{
        self.isEngineOn = !isEngineOn
        return self.isEngineOn
    }
    func countOfPeople() {
        print("the truck accommodates up to \(self.numberOfPeople) people")
    }
    func consumption() {
        print("the truck fuel consumption is \(self.fuelConsumption)")
    }
    
    init(isEngineOn: Bool, isWindowOpen: Bool, releaseYear: Int, tankFullness: Float, numberOfPeople:Int, loadCapacity: Int, fuelConsumption: Float) {
        self.isEngineOn = isEngineOn
        self.isWindowOpen = isWindowOpen
        self.releaseYear = releaseYear
        self.tankFullness = tankFullness
        self.numberOfPeople = numberOfPeople
        self.loadCapacity = loadCapacity
        self.fuelConsumption = fuelConsumption
    }
    
}

var newCarTruck = TruckCar(isEngineOn: true, isWindowOpen: false, releaseYear: 2011, tankFullness: 40, numberOfPeople: 5, loadCapacity: 202, fuelConsumption: 20)

newCarTruck.changeEngineState()
newCarTruck.changeWindowState()
newCarTruck.countOfPeople()
newCarTruck.printDescription()


var newSportCar = SportCar(isEngineOn: false, isWindowOpen: false, releaseYear: 2019, tankFullness: 30, numberOfPeople: 4, horsepower: 300, maxSpeed: 300)

newSportCar.changeEngineState()
newSportCar.changeWindowState()
newSportCar.countOfPeople()
newSportCar.printDescription()
