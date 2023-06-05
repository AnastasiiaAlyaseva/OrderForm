import SwiftUI

struct CustomerInformationSection: View {
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        Section(header: Text("Customer Information")) {
            TextField("Customer Name", text: $viewModel.name)
            TextField("Email", text: $viewModel.email)
            TextField("Address", text: $viewModel.address)
        }
    }
}

