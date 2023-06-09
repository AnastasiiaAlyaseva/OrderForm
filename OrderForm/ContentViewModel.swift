import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var address: String = ""
    @Published var email: String = ""
    @Published var pizzaSize: PizzaSize = .large
    @Published var quantity = 1
    @Published var pizzaType: PizzaType = .cheese
    @Published var orderStatus: Bool = false
    @Published var imageName: String = "Cheese"
    
    func resertToDefault() {
        name = ""
        address = ""
        email = ""
        pizzaSize = .large
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
    
    func isEmailValidCheck() -> Bool {
        let emailRegex = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let predicateEmail = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return predicateEmail.evaluate(with: email)
    }
}
