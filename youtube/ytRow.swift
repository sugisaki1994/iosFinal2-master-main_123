//
//  ytRow.swift
//  iosFinal
//
//  Created by User12 on 2021/1/21.
//  Copyright © 2021 tflee. All rights reserved.
//

import SwiftUI

struct ytRow: View {
    
    var item: Item
    
    var body: some View {
        Text(item.id)
    }
}

struct ytRow_Previews: PreviewProvider {
    static var previews: some View {
        ytRow(item: Item(id: "aa", snippet: snippet(channelId: "", title: "")))
    }
}
