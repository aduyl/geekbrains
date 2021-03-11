//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

var str = "Hello, playground"
func isEven( _ number: Int) -> Bool{
    return Bool(truncating: (((number % 2) + 1) % 2) as NSNumber)
}

func isDevided(_ number: Int) -> Bool{

    if(number % 3 == 0){return true}else{return false}
}

func returnArray(_ number: Int)-> Array<Int>{
    var newArray: Array<Int> = []
    for i in 1...number{
        newArray.append(Int(i))
    }
    return newArray
}
func deleteEvenAndTh(_ array: Array<Int>)->Array<Int>{
    var arr: Array<Int> = []
    for elem in array{
        if(!(isEven(elem)) && !(isDevided(elem))){
            arr.append(Int(elem))
        }
    }
    return arr
}
// рекурсивно нахожу числа фибоначчи и в отдельной функции добавляю их в массив
func fibonacci(_ number: Int)->Int{
    if(number == 1 || number == 2){
        return 1
    }else{
        return fibonacci(number - 1) + fibonacci(number - 2)
    }
}

func fibonacciArray(_ number:Int) -> Array<Int> {
    var arra: Array<Int> = []
    for i in 1...number{
        arra.append(fibonacci(i))
    }
    return arra
}

// обращаюсь к изначально заданным элементам массива
func fibonacciArraySecond(_ number:Int) -> Array<Int> {
    var arra: Array<Int> = [1,1]
    for i in 2...number{
        arra.append(arra[i - 1] + arra[i - 2])
    }
    return arra
}


class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
    
}
// Present the view controller in the Live View window

PlaygroundPage.current.liveView = MyViewController()
