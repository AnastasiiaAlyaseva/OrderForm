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
                Picker("Options", selection: $viewModel.pizzaOption){
                    Text(PizzaOption.large.name).tag(PizzaOption.large)
                    Text(PizzaOption.medium.name).tag(PizzaOption.medium)
                    Text(PizzaOption.half.name).tag(PizzaOption.half)
                    Text(PizzaOption.small.name).tag(PizzaOption.small)
                }
                .pickerStyle(MenuPickerStyle())
            }
            
            Stepper(value:$viewModel.quantity, in: 1...1000) {
                Text("Quantity: \(viewModel.quantity)")
            }
        }
    }
}
