//
//  Networker.swift
//  jsonSwiftUi
//
//  Created by Anton Asetski on 4/23/20.
//  Copyright © 2020 Anton Asetski. All rights reserved.
//

import Foundation

class Networker: ObservableObject {

    @Published var posts = [Post]()

    init() {
        self.fetch()
    }

    func fetch() {
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            guard let data = data else { return }
            do {
                let result = try JSONDecoder().decode(Response.self, from: data)
                DispatchQueue.main.async {
                    self.posts = result.hits
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
