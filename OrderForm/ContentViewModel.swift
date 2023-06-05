import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var address: String = ""
    @Published var email: String = ""
    @Published var pizzaOptionTag: Int = 0
    @Published var quantity = 1
    var pizzaOption = ["Large", "Medium"]
    @Published var orderStatus: Bool = false
    
    func placeOrder(){
        orderStatus = true
    }
}

