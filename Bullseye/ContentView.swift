import SwiftUI
struct ContentView: View {
    @State var alertIsVisible:Bool=false
    var body: some View {
        VStack {
            // Target row
            Text("Welcome to my first iOS app!")
                .foregroundColor(Color.purple)
                .padding()
            // Slider row
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
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896.0, height: 414))
    }
}
