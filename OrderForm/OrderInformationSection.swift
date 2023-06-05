import SwiftUI

struct OrderInformationSection: View {
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        Section(header: Text("Order Information")) {
            Text("Italian Pizza")
            HStack{
                Picker("Options", selection: $viewModel.pizzaOptionTag){
                    Text("Large").tag(0)
                    Text("Medium").tag(1)
                }
                .pickerStyle(MenuPickerStyle())
                
                Spacer()
                Text(viewModel.pizzaOption[viewModel.pizzaOptionTag])
            }
            Stepper(value:$viewModel.quantity, in: 1...1000) {
                Text("Quantity: \(viewModel.quantity)")
            }
        }
    }
}
