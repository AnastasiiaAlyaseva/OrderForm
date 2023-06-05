import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationView{
            Form{
                CustomerInformationSection(viewModel: viewModel)
                
                Image("pizza")
                    .resizable()
                    .frame(height: 200)
                    .scaledToFit()
                    .cornerRadius(10)
               
                OrderInformationSection(viewModel: viewModel)
                
                Button(action: {
                    viewModel.placeOrder()
                }, label: {
                    HStack {
                        Spacer()
                        Text(viewModel.orderStatus ? "Ordered" : "Place Order")
                        Spacer()
                    }
                }).disabled(viewModel.orderStatus)
            }
            .navigationBarTitle("Order")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
