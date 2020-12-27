import SwiftUI
struct ContentView: View {
    @State var alertIsVisible:Bool=false
    var body: some View {
        VStack {
            Spacer()
            // Target row
            HStack {
                Text("Put the bullseye as close as you can to:")
                Text("100")
            }
            Spacer()
            // Slider row
            HStack {
                Text("1")
                Slider(value: .constant(10))
                Text("100")
            }
            Spacer()
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
            Spacer()
            // Score row
            HStack{
                Button(action: {}){
                    Text("Start Over")
                }
                Spacer()
                Text("Score: ")
                Text("999")
                Spacer()
                Text("Round: ")
                Text("999")
                Spacer()
                Button(action: {}){
                    Text("Info")
                }
            }.padding(.bottom, 24)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
