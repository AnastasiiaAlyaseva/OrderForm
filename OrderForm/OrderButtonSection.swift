import SwiftUI

struct OrderButtonSection: View {
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        Button(action: {
            viewModel.placeOrder()
        }, label: {
            Text(viewModel.orderStatus ? "Ordered" : "Place Order")
        })
        .disabled(viewModel.name.isEmpty || viewModel.email.isEmpty)
        .buttonStyle(BorderlessButtonStyle())
    }
}
