import SwiftUI

struct CustomerInformationSection: View {
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        Section(header: Text("Customer Information")) {
            // TODO: name and email are required, if empty - place order button is disabled, if not - active
            // TODO: address is optional, could be empty
            TextField("Customer Name", text: $viewModel.name)
            // TODO: add email validator
            TextField("Email", text: $viewModel.email)
            TextField("Address", text: $viewModel.address)
        }
    }
}

