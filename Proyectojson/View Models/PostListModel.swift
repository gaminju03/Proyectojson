//
//  PostListModel.swift
//  Proyectojson
//
//  Created by Juan on 21/04/20.
//  Copyright © 2020 usuario. All rights reserved.
//

import Foundation

class PostListViewModel: ObservableObject {
   @Published  var posts = [PostViewModel]()
    
    init() {
        Webservices().getPosts { posts in
            if let posts = posts {
                 self.posts = posts.map(PostViewModel.init)
            }
           
        }
    }
}

struct PostViewModel {
    var  post : Post
    init(post:Post) {
        self.post = post
    }
    var title : String{
        return self.post.title
    }
    var body : String{
         return self.post.body
    }
    
}
