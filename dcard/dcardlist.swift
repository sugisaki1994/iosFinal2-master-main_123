//
//  dcardlist.swift
//  iosFinal
//
//  Created by User02 on 2021/1/20.
//  Copyright © 2021 tflee. All rights reserved.
//

import SwiftUI

struct dcardlist: View {
    @State private var dcards = [Feed]()
    
    func fetchdcardss() {
        
        
        let urlStr = "https://dcard.tw/_api/posts"
        if let url = URL(string: urlStr) {
            URLSession.shared.dataTask(with: url) { (data, response , error) in
                
                if let data = data {
                    do {
                        let posts = try JSONDecoder().decode([Feed].self, from: data)
                        dcards = posts
                    } catch  {
                        print(error)
                    }
                }
            }.resume()
        }
        
    }
    var body: some View {
        
        /*
        NavigationView {
            List(songs.indices, id:\.self, rowContent: { (index) in
                NavigationLink(
                    destination: SongDetail(song: songs[index]),
                    label: {
                        SongRow(song: songs[index])
                    })
                
            })
            .onAppear(perform: {
                fetchSongs()
        })
        }
         */
        
        NavigationView {
            List(dcards.indices, id:\.self,
                 rowContent:{(index) in
                    NavigationLink(destination: dcard_detail(dcard: dcards[index]),label:{
                    dcardrow(dcard:dcards[index])
                    })
                
             })
            .onAppear(perform: {
                fetchdcardss()
            })
        }
    }
    
}

struct dcardlist_Previews: PreviewProvider {
    static var previews: some View {
        dcardlist()
    }
}
