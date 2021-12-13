//
//  VideoListView.swift
//  UsingAPIs
//
//  Created by kirabin on 11.12.2021.
//

import SwiftUI

struct VideoListView: View {
    @Environment(\.colorScheme) var colorScheme
//    @State private var isLoading = true
    @ObservedObject var viewModel: VideoListViewModel
    
    var body: some View {
        ZStack {
            if viewModel.isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .orange))
            } else if viewModel.videoCellViewModels.isEmpty {
                Text("No videos")
                    .font(.title)
                    .foregroundColor(colorScheme == .dark ? .orange : .mint)
            } else {
                List(viewModel.videoCellViewModels, id: \.id) { cellViewModel in
                    VideoCell(viewModel: cellViewModel)
                }
            }
        }
        .onAppear(perform: viewModel.obtainVideos)
    }
    
    
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView(viewModel: VideoListViewModel())
            .environment(\.colorScheme, .dark)
    }
}
