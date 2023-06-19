import Foundation

enum PizzaType: Int, Hashable {
    case cheese
    case neapolitan
    case sicilian
    case hawaiian
    case newYork
    
    var name: String {
        switch self {
        case .cheese:
            return "Cheese"
        case .neapolitan:
            return "Neapolitan"
        case .sicilian:
            return "Sicilian"
        case .hawaiian:
            return "Hawaiian"
        case .newYork:
            return "New York"
        }
    }
}
