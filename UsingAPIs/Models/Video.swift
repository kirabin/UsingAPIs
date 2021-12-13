//
//  Video.swift
//  UsingAPIs
//
//  Created by kirabin on 11.12.2021.
//

import Foundation

struct Video: Identifiable {
    let id = UUID()
    let title: String
    let viewCount: Int
}

extension Video {
    static let mockData: [Video] = [
        Video(title: "How to SwiftUI", viewCount: 10232),
        Video(title: "How to UIKit", viewCount: 2),
    ]
}
