

import SwiftUI

struct youtubeview: View {
    @State private var youtubes = [Item]()
    
    func fetchdyoutube() {
        
        let urlStr = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet,contentDetails,status&playlistId=UUMUnInmOkrWN4gof9KlhNmQ&key=AIzaSyDfBm1vp7g7myWFMT3xutn-gHi1_IN8LIg&maxResults=30"
        
        if let url = URL(string: urlStr) {
            URLSession.shared.dataTask(with: url) { (data, response , error) in
                
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                if let data = data,
                   let video = try? decoder.decode(SearchResult.self, from: data){
                    self.youtubes = video.items
                    
                }
            }.resume()
        }
        
    }
    
    
    

    
    
    var body: some View {
        List(youtubes.indices, id:\.self, rowContent: { (index) in
                ytRow(item: youtubes[index])
            
        })
    }
}
struct youtubeview_Previews: PreviewProvider {
    static var previews: some View {
        youtubeview()
    }
}
