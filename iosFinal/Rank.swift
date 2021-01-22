

import SwiftUI

struct Rank: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.black,Color.red,Color.black]), startPoint: UnitPoint(x:0,y:0), endPoint: UnitPoint(x:1,y:1))
                VStack{
                    NavigationLink(destination: dcardlist())
                    {
                        Image("dcard_icon")
                            .renderingMode(.original)
                            .resizable().frame(width: 300, height: 300)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.yellow ,lineWidth:4))
                        .shadow(radius: 40)
                        
                    }
                    NavigationLink(destination: youtubeview())
                    {
                        Image("yt_icon")
                            .renderingMode(.original)
                            .resizable().frame(width: 300, height: 300)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.yellow ,lineWidth:4))
                        .shadow(radius: 40)
                    }
                }
            }.navigationBarTitle("Conferences")
        }
    }
}

struct Rank_Previews: PreviewProvider {
    static var previews: some View {
        Rank()
    }
}
