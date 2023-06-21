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
                Picker("Options", selection: $viewModel.pizzaSize){
                    Text(PizzaSize.large.name).tag(PizzaSize.large)
                    Text(PizzaSize.medium.name).tag(PizzaSize.medium)
                    Text(PizzaSize.half.name).tag(PizzaSize.half)
                    Text(PizzaSize.small.name).tag(PizzaSize.small)
                }
                .pickerStyle(MenuPickerStyle())
            }
            
            Stepper(value:$viewModel.quantity, in: 1...1000) {
                Text("Quantity: \(viewModel.quantity)")
            }
        }
    }
}
