import Foundation


class Deposit: MainConfig {
    let amount: Double
    let percentage: Double
    let years: Int
    let daysDefault: Int
    
    init(amount: Double, percentage: Double) {
        self.amount = amount
        self.percentage = percentage
        years = 5
        daysDefault = 365
    }
    
    func start() {
        showFinance()
    }
    
    private func showFinance() {
        let days = Double ((daysDefault * years) / daysDefault)
        let incomeFinance  = (amount * percentage *  days) / 100
        let finance = incomeFinance + amount
        
        print("your finance = \(String(format: "%.3f", finance))")
    }
}
