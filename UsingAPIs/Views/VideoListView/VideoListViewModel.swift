//
//  VideoListViewModel.swift
//  UsingAPIs
//
//  Created by kirabin on 11.12.2021.
//

import Foundation
import SwiftUI

class VideoListViewModel: Identifiable, ObservableObject {
    let id = UUID()
    @Published var videoCellViewModels: [VideoCellViewModel] = []
    @Published var isLoading = false
    
    func obtainVideos() {
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil,
                  let data = data
            else { return }
            
            // TODO: decode data
            // https://www.hackingwithswift.com/read/7/3/parsing-json-using-the-codable-protocol
            print(data)
        }
        
        isLoading = true
        task.resume()
        isLoading = false
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            self.isLoading = false
//        }
    }
}
