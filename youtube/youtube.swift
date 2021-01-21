

import Foundation


struct SearchResult:Codable {
    var kind: String
    var items: [Item]
}
struct Item: Codable {
    var id : String
    var snippet: snippet
}

struct snippet: Codable {
    var channelId: String
    var title: String
}
