

import SwiftUI

struct ytRow: View {
    
    var item: Item
    
    var body: some View {
        Text(item.snippet.title)
    }
}

struct ytRow_Previews: PreviewProvider {
    static var previews: some View {
        ytRow(item: Item(id: "aa", snippet: snippet(channelId: "", title: "cc", resourceId: resourceId(videoId: ""))))
    }
}
