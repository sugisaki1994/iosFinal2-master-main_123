
import SwiftUI

struct ContentView: View {
    var body: some View {
      TabView{
            Rank()
                .tabItem{
                    Image(systemName: "cloud.fill")
                    Text("Rank")
            }
            
            picker()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
            }
            
      }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

