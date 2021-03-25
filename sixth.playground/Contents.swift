import UIKit

class Que<T: Numeric> {
    private var array: [T] = []
    
    func pushBack(_ num: T) {
        self.array.append(num)
    }
    
    func getLast() -> T? {
        guard !array.isEmpty else {
            return nil
        }
        return self.array.removeLast()
    }
    
    subscript(i: Int) -> T? {
        guard i >= 0, i % 3 == 0, !array.isEmpty else { return nil }
        return self.array[i]
    }
    
    func sort(with predicate: (T) -> Bool) -> [T] {
        var temp = [T]()
        self.array.forEach{
            if predicate($0) {
                temp.append($0)
            }
        }
        return array
    }
}
