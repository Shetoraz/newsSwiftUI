//
//  ContentView.swift
//  jsonSwiftUi
//
//  Created by Anton Asetski on 4/7/20.
//  Copyright © 2020 Anton Asetski. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject private var networker = Networker()

    var body: some View {
        NavigationView {
            List(networker.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                            .bold()
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
