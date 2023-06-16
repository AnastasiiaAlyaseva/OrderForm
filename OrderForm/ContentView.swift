import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationView{
            VStack {
                Form{
                    CustomerInformationSection(viewModel: viewModel)
                    
                    Image("pizza")
                        .resizable()
                        .frame(height: 200)
                        .scaledToFit()
                        .cornerRadius(10)
                    
                    OrderInformationSection(viewModel: viewModel)
                    
                    ResetButtonSection(viewModel: viewModel)
                }
                .navigationBarTitle("Order")
                
                OrderButtonSection(viewModel: viewModel)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
