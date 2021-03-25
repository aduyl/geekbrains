import UIKit

class Que<T: Numeric>{
    private var array: [T] = []
    func pushBack(num: T){
        self.array.append(num)
    }
    func removeFirstEl() -> T? {
        guard !array.isEmpty else { return nil }
        return self.array.removeFirst()
    }
    subscript(index: Int) -> T?{
        guard index >= 0, Int((self.array.count)) % 3 - 1 == 0 else {return nil}
        
        return self.array[index]
    }
    
    func sort(with predicate: (T) -> Bool) -> [T] {
        var temp = [T]()
        self.array.forEach{
            if predicate($0) {
                temp.append($0)
            }
        }
        
        return temp
    }
}
