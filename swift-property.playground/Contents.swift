//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, property"

class Counter {
    var number: Int = 0;
}
let myCounter = Counter()
myCounter.number = 1
print(myCounter.number)

class Rectangle {
    var width : Double = 0.0
    var height : Double = 0.0
    var area : Double {
        //getter 方法
        get{
            return width * height
        }
        // setter 方法
        set {
            //此时假定边长相等
            width = sqrt(newValue);
            height =    sqrt(newValue);
        }
    }
}

var rect = Rectangle();
rect.width = 3.0
rect.height = 4.0
print(rect.area)
rect.area = 9.0
print(rect.height)

class propertyObserverExample {
    var number : Int = 0 {
        //将要改变
        willSet (newNumber){
            print("ablout to change to \(newNumber)")
        }
        //改变
        didSet (oldValue){
            print("just change from \(oldValue) to \(self.number)")
        }
    }
}

var observer = propertyObserverExample()
observer.number = 4

class SomeExpensiveClass {
    init (id :Int){
        print("expensive class \(id) created")
    }
}

class lazyPropertyExample {
    var expensiveClass1 = SomeExpensiveClass(id: 1)
    //!我们实际上正在构造一个类，但他被标记为惰性
    //被标记为lazy变量时，他立即创建someexpensiveClass的第一个实例，第二个势力将一直等到代码中实际用到才会创建
    lazy var expensivieClass2 = SomeExpensiveClass(id: 2)
    init() {
        print("first class created !")
    }
}

var lazyExample = lazyPropertyExample()
lazyExample.expensiveClass1
lazyExample.expensivieClass2


