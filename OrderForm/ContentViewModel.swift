import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var address: String = ""
    @Published var email: String = ""
    @Published var pizzaOptionTag: Int = 0
    @Published var quantity = 1
    @Published var pizzaType: PizzaType = .cheese
    @Published var orderStatus: Bool = false
    @Published var imageName: String = "Cheese"
    
    func resertToDefault() {
        name = ""
        address = ""
        email = ""
        pizzaOptionTag = 0
        quantity = 1
        orderStatus = false
        imageName = "Cheese"
        pizzaType = .cheese
    }
    
    func performAction() {
        switch pizzaType {
        case .cheese:
            imageName = "Cheese"
        case .neapolitan:
            imageName = "Neapolitan"
        case .sicilian:
            imageName = "Sicilian"
        case .hawaiian:
            imageName = "Hawaiian"
        case .newYork:
            imageName = "New York"
        }
    }
    
    func placeOrder(){
        orderStatus = true
        // TODO: show alert with Name, type of pizza, size and quatity.
    }
}

