import SwiftUI

struct OrderButtonSection: View {
    @ObservedObject var viewModel: ContentViewModel
    @State private var showingAlert = false
    
    var body: some View {
        Button(action: {
            viewModel.placeOrder()
        }, label: {
            Text(viewModel.orderStatus ? "Ordered" : "Place Order")
        })
        .disabled(viewModel.orderStatus)
        .buttonStyle(BorderlessButtonStyle())
    }
}
