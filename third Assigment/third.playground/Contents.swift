//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

struct SportCar{
    let model: String  // модель авто
    var gasoline: Bool // бензин = true, дизель = false
    var window: Bool // открыто = true или закрыто = false
    var engine: Bool // заведен ли двигатель
    var color: UIColor
    var mileage: Float // пробег
    var trunkFullness: Float // заполненность багажника
    let trunkVolume: Float // обьем багажника
    let capacity: Int // вместительность человек
    let releaseYear: Int // год выпуска
    
    mutating func changeWindow(){
        self.window = !(self.window)
    }
    mutating func changeEngine(){
        self.engine = !(self.engine)
    }
    mutating func addLuggage(_ weigth: Float){
        if(self.trunkFullness + weigth < trunkVolume){
            self.trunkFullness = self.trunkFullness + weigth
        } else{
            self.trunkFullness = self.trunkVolume
        }
    }
}
enum changeCar{
    case openCloseWindow
    case startStopEngine
    case addTrunk
}

// действия с машиной
func carChanges(_ car: SportCar, mode: changeCar, wegth: Float) -> SportCar{
    var carNew: SportCar = car
    switch mode{
    case .openCloseWindow:
        carNew.changeWindow()
    case .startStopEngine:
        carNew.changeEngine()
    case .addTrunk:
        carNew.addLuggage(wegth)
    }
    return carNew
}

var nissan = SportCar(model: "qashqai", gasoline: true, window: false, engine: false, color: UIColor.black, mileage: 0.0, trunkFullness: 0.0, trunkVolume: 50, capacity: 7, releaseYear: 2015)
print(carChanges(nissan, mode: changeCar.addTrunk, wegth: 48.9))
// действия с машиной закончились


struct TunkCar{
    let model: String  // модель
    let gasoline: Bool // бензин = true, дизель = false
    var window: Bool // открыто или закрыто
    var engine: Bool // заведен ли двигатель
    var fullness: Float // заполненность
    var color: UIColor
    let releaseYear: Int // год выпуска
    let liftingCapacity: Float // грузоподьемность
    
    mutating func changeWindow(){
        self.window = !(self.window)
    }
    mutating func changeEngine(){
        self.engine = !(self.engine)
    }
    mutating func addLuggage(_ weigth: Float){
        if(self.fullness + weigth < liftingCapacity){
            self.fullness = self.liftingCapacity + weigth
        } else{
            self.fullness = self.liftingCapacity
        }
    }
}

func tunkChanges(_ tunk: TunkCar, mode: changeCar, wegth: Float) -> TunkCar{
    var tunkNew: TunkCar = tunk
    switch mode{
    case .openCloseWindow:
        tunkNew.changeWindow()
    case .startStopEngine:
        tunkNew.changeEngine()
    case .addTrunk:
        tunkNew.addLuggage(wegth)
    }
    return tunkNew
}


var truck = TunkCar(model: "idk", gasoline: true, window: true, engine: true, fullness: 2000, color: UIColor.red, releaseYear: 2006, liftingCapacity: 10000)

print(tunkChanges(truck, mode: changeCar.addTrunk, wegth: 19000))
