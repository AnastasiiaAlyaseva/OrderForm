import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var address: String = ""
    @Published var email: String = ""
    @Published var pizzaOption: PizzaOption = .large
    @Published var quantity = 1
    @Published var pizzaType: PizzaType = .cheese
    @Published var orderStatus: Bool = false
    @Published var imageName: String = "Cheese"
    
    func resertToDefault() {
        name = ""
        address = ""
        email = ""
        pizzaOption = .large
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
    
    func placeOrderAlert() -> Alert {
        let orderMessage = "Thank you, \(name)! You have ordered \(quantity) \(pizzaOption) \(pizzaType.name) pizza(s)."
        
        return Alert(title: Text("Order Confirmation"),
                     message: Text(orderMessage),
                     dismissButton: .default(Text("OK")) {
            print("Order confirmed")
            self.resertToDefault()
        }
        )
    }
}
