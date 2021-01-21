//
//  dcard_detail.swift
//  iosFinal
//
//  Created by User02 on 2021/1/20.
//  Copyright © 2021 tflee. All rights reserved.
//

import SwiftUI

struct dcard_detail: View {
    var dcard : Feed
    
    var body: some View {
        VStack{
            Text(dcard.title)
                .bold()
            Text(dcard.excerpt)
        }
        
    }
}

struct dcard_detail_Previews: PreviewProvider {
    static var previews: some View {
        dcard_detail(dcard: Feed(title: "aa", excerpt: "bb"))
    }
}
