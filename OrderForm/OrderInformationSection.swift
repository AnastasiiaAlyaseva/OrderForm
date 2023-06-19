import SwiftUI

struct OrderInformationSection: View {
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        Section(header: Text("Order Information")) {
            // TODO: additional: change image of pizza
            HStack{
                Picker("Types of Pizza", selection: $viewModel.pizzaTypeTag){
                    Text("Cheese").tag(0)
                    Text("Neapolitan").tag(1)
                    Text("Sicilian").tag(2)
                    Text("Hawaiian").tag(3)
                    Text("New York").tag(4)
                }
                .pickerStyle(MenuPickerStyle())
            }
            
            HStack{
                Picker("Options", selection: $viewModel.pizzaOptionTag){
                    Text("Large").tag(0)
                    Text("Medium").tag(1)
                    Text("Half").tag(2)
                    Text("Small").tag(3)
                }
                .pickerStyle(MenuPickerStyle())
            }
            
            Stepper(value:$viewModel.quantity, in: 1...1000) {
                Text("Quantity: \(viewModel.quantity)")
            }
        }
    }
}
