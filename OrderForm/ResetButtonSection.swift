import SwiftUI

struct ResetButtonSection: View {
    @ObservedObject var viewModel: ContentViewModel
    @State private var showingAlert = false
    
    var body: some View {
        Section{
            Button ("New order") {
                showingAlert = true
            }
            .alert(isPresented:$showingAlert) {
                Alert(
                    title: Text("Are you sure you want to make a new order?"),
                    primaryButton: .destructive(Text("Ok")) {
                        viewModel.resertToDefault()
                    },
                    secondaryButton: .cancel()
                )
            }
        }
        .buttonStyle(BorderlessButtonStyle())
    }
}
