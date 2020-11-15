import Foundation

class Figure{
    private(set) var name: String = "Figure"
    private(set) var cornerCounter: Int = 0

//    init(name: String, cornerCounter: Int) {
//        self.name = name
//        self.cornerCounter = cornerCounter
//    }
}

class Triangle: Figure {
    var height: Double = 0.0
    var length: Double = 0.0
//    init(){
//        super.init()
//        name = "Triangle" + super.name
//        cornerCounter = 3
//    }
    override var cornerCounter: Int {
        return 3
    }
    override var name: String {
        return "Triangle " + super.name
    }
    func calculateArea()->Double{
        return 0.5*height*length
    }
}

class Rectangle: Figure, equalSidesInPair{
    var perimeter: Double = 0.0
    var width: Double = 0.0
    var length: Double = 0.0
//    var perimeter: Double {
//        get{
//            return 2*width + 2*length
//        }
//    }
    override var cornerCounter: Int {
        return 4
    }
    var isEqualSides: Bool = true
    override var name: String {
        return "Rectangle " + super.name
    }
    func calculateArea()->Double{
        return width*length
    }
}

class Circle: Figure{
    var radius: Double = 0.0
    override var cornerCounter: Int {
        return 0
    }
    override var name: String {
        return "Circle " + super.name
    }
    func calculateArea()->Double{
        return Double.pi * sqrt(radius)
    }
}

protocol equalSidesInPair{
    var width: Double {get set}
    var length: Double {get set}
    var perimeter: Double {get set}
    var isEqualSides: Bool { get }
}


var tr = Triangle()
tr.height = 4
tr.length = 2

print("Triangle name \(tr.name)")
print(tr.calculateArea())


var cr = Circle()
cr.radius = 4

print("Circle name \(cr.name)")
print(cr.calculateArea())


var rect = Rectangle()
rect.width = 4
rect.length = 4

print("Rectangle name \(rect.name)")
print(rect.calculateArea())
