import SwiftUI

struct OrderInformationSection: View {
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        Section(header: Text("Order Information")) {
            HStack{
                Picker("Types of Pizza", selection: $viewModel.pizzaType){
                    Text(PizzaType.cheese.name).tag(PizzaType.cheese)
                    Text(PizzaType.neapolitan.name).tag(PizzaType.neapolitan)
                    Text(PizzaType.sicilian.name).tag(PizzaType.sicilian)
                    Text(PizzaType.hawaiian.name).tag(PizzaType.hawaiian)
                    Text(PizzaType.newYork.name).tag(PizzaType.newYork)
                }
                .pickerStyle(MenuPickerStyle())
            }
            .onChange(of: viewModel.pizzaType) { newValue in
                viewModel.performAction()
            }
            
            HStack{
                // TODO: pizzaOptionTag like pizza type
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
