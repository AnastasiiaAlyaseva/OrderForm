import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var address: String = ""
    @Published var email: String = ""
    @Published var pizzaOptionTag: Int = 0
    @Published var quantity = 1
    @Published var pizzaTypeTag: Int = 0
    @Published var orderStatus: Bool = false
    
    func resertToDefault() {
        name = ""
        address = ""
        email = ""
        pizzaOptionTag = 0
        quantity = 1
        orderStatus = false
    }
    
    func performAction() {
        var imageName: String = "Cheese"
        
        switch pizzaTypeTag {
        case 0:
            imageName = "Cheese"
        case 1:
            imageName = "Neapolitan"
        case 2:
            imageName = "Sicilian"
        case 3:
            imageName = "Hawaiian"
        case 4:
            imageName = "New York"
        default:
            print("Error")
        }
        print(imageName)
    }
    
    enum PizzaType: Int {
       case cheese
       case neapolitan
       case sicilian
       case hawaiian
       case newYork
    }
    
    func placeOrder(){
        orderStatus = true
        // TODO: show alert with Name, type of pizza, size and quatity.
    }
}

