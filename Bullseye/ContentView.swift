import SwiftUI
struct ContentView: View {
    @State var alertIsVisible:Bool=false
    var body: some View {
        VStack {
            Text("Welcome to my first iOS app!")
                .foregroundColor(Color.purple)
                .padding()
            Button(action: {
                print("button pressed")
                self.alertIsVisible=true
            }) {
                Text("I am a button")
            }
            .alert(isPresented: $alertIsVisible){
                ()->Alert
                in return Alert(title: Text("Adın ne olm"), message: Text("Alperen mi?"), dismissButton: .default(Text("Gapath")))
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
