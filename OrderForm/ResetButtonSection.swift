import SwiftUI

struct ResetButtonSection: View {
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        Section{
            Button ("New order") {
                viewModel.showingAlert = true
            }
            .alert(isPresented:$viewModel.showingAlert) {
                Alert(title: Text("Are you sure you want to make a new order?"),
                      primaryButton: .destructive(Text("Ok")) {
                    viewModel.resertToDefault()
                },
                      secondaryButton: .cancel()
                )}
        }
        .buttonStyle(BorderlessButtonStyle())
    }
}
