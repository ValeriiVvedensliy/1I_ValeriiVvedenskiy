import Foundation


class Triangle: MainConfig {
    
    let a: Double
    let b: Double
    
    init(a: Double, b: Double) {
        self.a = a
        self.b = b
    }
    
    func start() {
        showTriangleHypotenuse()
        showTrianglePerimeter()
        showTriangleArea()
    }
    
    private func showTriangleHypotenuse() {
        let hypotenuse = sqrt((pow(a, 2) + pow(b, 2)))
        print("hypotenuse of ​​a triangle = \(String(format: "%.2f", hypotenuse))")
    }
    
    private func showTrianglePerimeter() {
        let perimeter = sqrt((pow(a, 2) + pow(b, 2))) + (a + b)
        print("perimeter of ​​a triangle = \(String(format: "%.2f", perimeter))")
    }
    
    private func showTriangleArea() {
        let area = (a * b) / 2
        print("area of ​​a triangle = \(String(format: "%.2f", area))")
    }
}
