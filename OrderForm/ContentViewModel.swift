import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var address: String = ""
    @Published var email: String = ""
    @Published var pizzaOptionTag: Int = 0
    @Published var quantity = 1
    @Published var pizzaTypeTag: Int = 0
    var pizzaOption = ["Large", "Medium", "Half", "Small"] 
    var pizzaType = ["Cheese", "Neapolitan", "Sicilian", "Hawaiian","New York"]
    @Published var orderStatus: Bool = false
    
    func resertToDefault() {
        name = ""
        address = ""
        email = ""
        pizzaOptionTag = 0
        quantity = 1
        orderStatus = false
    }
    
    func placeOrder(){
        orderStatus = true
        // TODO: show alert with Name, type of pizza, size and quatity.
    }
}

