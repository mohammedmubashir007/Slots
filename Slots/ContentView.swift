import SwiftUI

struct ContentView: View {
    
    @State var score = 1000
    @State var photo = ["apple","cherry","star"]
    
    
    @State var random1 = 0
    @State var random2 = 0
    @State var random3 = 0
    
    var body: some View {
        VStack(spacing:20.0) {
            
            Spacer()
            Text("SwiftUI Slots!").font(.largeTitle)
            Spacer()
            
         Text("Credits: "+String(score))
            Spacer()
            
            HStack{
                Image(photo[random1]) .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(photo[random2]) .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(photo[random3]) .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Spacer()
            
            Button("Spin") {
                random1 = Int.random(in: 0...2)
                random2 = Int.random(in: 0...2)
                random3 = Int.random(in: 0...2)
                
                if((random1 == random2) && (random2==random3)){
                    score += 15
                }else{
                    score -= 5
                }
                
                
            }.padding()
                .padding([.leading, .trailing], 40)
                .foregroundColor(.white)
                .background(Color(.systemPink))
                .cornerRadius(25)
                .font(.system(size: 18, weight: .bold, design: .default))
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
