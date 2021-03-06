//
//  ContentView.swift
//  Proyectojson
//
//  Created by Juan on 21/04/20.
//  Copyright © 2020 usuario. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var postListML = PostListViewModel()
    
    
    var body: some View {
        List(self.postListML.posts, id: \.id){ post in
            VStack(alignment: .leading){
                Text(post.title).font(.title)
                 Text(post.body)
            }
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
