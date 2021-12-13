//
//  VideoCell.swift
//  UsingAPIs
//
//  Created by kirabin on 11.12.2021.
//

import SwiftUI

struct VideoCell: View {
    let viewModel: VideoCellViewModel
    
    var body: some View {
        HStack {
            Image(systemName: "person")
                .frame(width: 80, height: 80, alignment: .center)
                .font(.title)
            VStack(alignment: .leading, spacing: 10) {
                Text(viewModel.title)
                HStack {
                    Image(systemName: "eye")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("\(viewModel.viewCount)")
                        .font(.caption)
                    .foregroundColor(.secondary)
                }
            }
            Spacer()
        }
    }
}

struct VideoCell_Previews: PreviewProvider {
    static var previews: some View {
        VideoCell(viewModel: VideoCellViewModel(
            title: "How to SwiftUI",
            viewCount: 203421)
        )
            .previewLayout(.sizeThatFits)
    }
}
