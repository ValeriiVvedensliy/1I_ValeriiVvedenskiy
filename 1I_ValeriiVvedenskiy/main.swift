import Foundation


var menuItem = 0
var mainConfig: MainConfig!

repeat {
    print("-= Menu =-")
    print("1 - Quadratic Equation")
    print("2 - Perimeter of a Triangle")
    print("3 - Deposit amount")
    print("0 - Exit")
    print("Enter menu item: ")
    
    menuItem = Int (readLine() ?? "") ?? 0
    print("\n")
    startProgram(menuItem)
    print("\n")
    
} while menuItem != 0


private func startProgram(_ menuItem: Int) {
    switch menuItem {
    case 1:
        mainConfig = QuadraticEquation(a: 2.0, b: 5.0, c: -7.0)
        mainConfig.start()
        break
    case 2:
        mainConfig = Triangle(a: 2.0, b: 5.0)
        mainConfig.start()
        break
    case 3:
        mainConfig = Deposit(amount: 200000.0, percentage: 5.0)
        mainConfig.start()
        break
    default:
        break
    }
}
