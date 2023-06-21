import SwiftUI

struct CustomerInformationSection: View {
    @ObservedObject var viewModel: ContentViewModel
    @State private var showingAlert = false
    
    var body: some View {
        Section(header: Text("Customer Information")) {
            // TODO: address is optional, could be empty
            TextField("Customer Name", text: $viewModel.name)
            TextField("Email", text: $viewModel.email, onEditingChanged: { inFocus in
                if inFocus {
                    print("inFocus")
                } else {
                    guard viewModel.isEmailValidCheck() == true else {
                        showingAlert = true
                        return
                    }
                }
            }
            )
            .alert(isPresented:$showingAlert) {
                Alert(
                    title: Text("You've entered an incorrect email address!"),
                    dismissButton: .default(Text("Ok"))
                )
            }
            .textContentType(.emailAddress)
            .keyboardType(.emailAddress)
            
            TextField("Address", text: $viewModel.address)
        }
    }
}
