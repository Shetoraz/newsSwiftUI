//
//  DetailView.swift
//  jsonSwiftUi
//
//  Created by Anton Asetski on 4/23/20.
//  Copyright © 2020 Anton Asetski. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
