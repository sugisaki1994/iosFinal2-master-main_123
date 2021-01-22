

import SwiftUI

struct youtubeview: View {
    @State private var youtubes = [Item]()
    
    func fetchdyoutube() {
        
        let urlStr = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet,contentDetails,status&playlistId=UUMUnInmOkrWN4gof9KlhNmQ&key=AIzaSyDfBm1vp7g7myWFMT3xutn-gHi1_IN8LIg&maxResults=30"
        
        if let url = URL(string: urlStr) {
            URLSession.shared.dataTask(with: url) { (data, response , error) in
                let decoder = JSONDecoder()
                
                
                if let data = data{
                    do{
                        let video = try decoder.decode(SearchResult.self, from: data)
                        youtubes = video.items
                    }catch{
                        print(error)
                    }
                    
                        
                }
                
            }.resume()
        
        }
        
    }
    
    
    

    
    
    var body: some View {
        
        List(youtubes.indices, id:\.self, rowContent: { (index) in
            NavigationLink(destination: safariView(name: "world"),label:{
                ytRow(item: youtubes[index])
            })
            
        })
        .onAppear(perform: {
            fetchdyoutube()
        })
        
    }
}
struct youtubeview_Previews: PreviewProvider {
    static var previews: some View {
        youtubeview()
    }
}
