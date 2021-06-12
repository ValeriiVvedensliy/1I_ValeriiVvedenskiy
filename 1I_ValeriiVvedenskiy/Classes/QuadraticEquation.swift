import Foundation


class QuadraticEquation: MainConfig {
    
    let a: Double
    let b: Double
    let c: Double
    
    init(a: Double, b: Double, c: Double) {
        self.a = a
        self.b = b
        self.c = c
    }
    
    func start() {
        let discriminant = pow(b, 2) - 4 * a * c
        checkDiscriminant(discriminant)
    }
    
    private func checkDiscriminant(_ discriminant: Double) {
        if discriminant > 0 {
            let x1 = foundX(value: discriminant, isFirstSqrt: true)
            let x2 = foundX(value: discriminant, isFirstSqrt: false)
            print("x1 = \(x1)")
            print("x2 = \(x2)")
        }
        else if discriminant < 0 {
            print("there are no roots in the quadratic equation.")
        }
        else {
            let x = foundX(value: discriminant, isFirstSqrt: true)
            print("x1 and x2 = \(x)")
        }
    }
    
    private func foundX(value: Double, isFirstSqrt: Bool) -> Double {
        if isFirstSqrt {
            return (-b + sqrt(value)) / (2 * a)
        }
        else{
            return (-b - sqrt(value)) / (2 * a)
        }
    }
}
