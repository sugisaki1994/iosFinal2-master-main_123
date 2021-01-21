//
//  dcardrow.swift
//  iosFinal
//
//  Created by User02 on 2021/1/20.
//  Copyright © 2021 tflee. All rights reserved.
//

import SwiftUI

struct dcardrow: View {
    
    
    var dcard: Feed
    var body: some View{
            Text(dcard.title)
                .bold()
            
    
    }
}

struct dcardrow_Previews: PreviewProvider {
    static var previews: some View {
        dcardrow(dcard: Feed(title: "aa", excerpt: "bb"))
    }
}
