//
//  ContentView.swift
//  UsingAPIs
//
//  Created by kirabin on 11.12.2021.
//

import SwiftUI

struct VideoViewModel {
    let title: String
    let viewCount: Int
    let author: String
}

struct ContentView: View {
    var body: some View {
        VideoListView(viewModel: VideoListViewModel())
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
