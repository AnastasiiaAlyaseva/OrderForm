import SwiftUI

enum PizzaSize: Int, Hashable {
    case large
    case medium
    case half
    case small
    
    var name: String {
        switch self {
        case .large:
            return "Large"
        case .medium:
            return "Medium"
        case .half:
            return "Half"
        case .small:
            return "Small"
        }
    }
}
