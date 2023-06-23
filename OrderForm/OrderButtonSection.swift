import SwiftUI

struct OrderButtonSection: View {
    @ObservedObject var viewModel: ContentViewModel
    @State private var showingAlert = false
    
    var body: some View {
        Button(action: {
            showingAlert = true
        }, label: {
            Text(viewModel.orderStatus ? "Ordered" : "Place Order")
        })
        .disabled(viewModel.name.isEmpty || viewModel.email.isEmpty)
        .buttonStyle(BorderlessButtonStyle())
        .alert(isPresented:$showingAlert) {
            placeOrderAlert()
        }
    }
    private func placeOrderAlert() -> Alert {
        let orderMessage = "Thank you, \(viewModel.name)! You have ordered \(viewModel.quantity) \(viewModel.pizzaSize) \(viewModel.pizzaType.name) pizza(s)."
        
        return Alert(
            title: Text("Order Confirmation"),
            message: Text(orderMessage),
            dismissButton: .default(Text("OK")) {
                print("Order confirmed")
                self.viewModel.resertToDefault()
            }
        )
    }
}
