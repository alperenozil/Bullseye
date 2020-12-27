import SwiftUI
struct ContentView: View {
    @State var alertIsVisible:Bool=false
    var body: some View {
        VStack {
            // Target row
            HStack {
                Text("Put the bullseye as close as you can to:")
                Text("100")
            }
            // Slider row
            HStack {
                Text("1")
                Slider(value: .constant(10))
                Text("100")
            }
            
            // Button row
            Button(action: {
                print("button pressed")
                self.alertIsVisible=true
            }) {
                Text("knock knock")
            }
            .alert(isPresented: $alertIsVisible){
                ()->Alert
                in return Alert(title: Text("Joke"), message: Text("Temel ucaktan atlamıs dunyayı tutturamamis"), dismissButton: .default(Text("Gapath")))
            }
            // Score row
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
