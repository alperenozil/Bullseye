import SwiftUI
struct ContentView: View {
    @State var alertIsVisible:Bool=false
    @State var sliderValue: Double=50.0
    @State var target: Int=Int.random(in: 1...100)
    var body: some View {
        VStack {
            Spacer()
            // Target row
            HStack {
                Text("Put the bullseye as close as you can to: \(self.target)")
            }
            Spacer()
            // Slider row
            HStack {
                Text("1")
                Slider(value: self.$sliderValue, in:1...100)
                Text("100")
            }
            Spacer()
            // Button row
            Button(action: {
                print("button pressed")
                self.alertIsVisible=true
            }) {
                Text("Show Result")
            }
            .alert(isPresented: $alertIsVisible){
                ()->Alert
                in return Alert(title: Text("Value"), message: Text("Slider is at \(Int(self.sliderValue.rounded())) now\n"+"Your score is \(self.pointsForCurrentRound())"), dismissButton: .default(Text("Gapath")))
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
    func pointsForCurrentRound()->Int {
        let roundedValue=Int(self.sliderValue.rounded())
        let difference=abs(self.target-roundedValue)
        let awardedPoints=100-difference
        return awardedPoints
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
