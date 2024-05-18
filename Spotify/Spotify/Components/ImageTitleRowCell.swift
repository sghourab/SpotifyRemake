//
//  ImageTitleRowCell.swift
//  Spotify
//
//  Created by Summer Crow on 2024-05-08.
//

import SwiftUI

struct ImageTitleRowCell: View {
    
    @State var imageSize: CGFloat = 100
    @State var imageName: String = Constants.randomImage
    @State var imageTitle: String = "Image title"
    
    var body: some View {
            VStack {
                ImageLoaderView(urlString: imageName)
                    .frame(width: imageSize, height: imageSize)

                Text(imageTitle)
                    .font(.callout)
                    .foregroundStyle(Color.spotifyLightGray)
                    .lineLimit(2)
                    .padding(4)

            }
            .frame(width: imageSize)

        }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        ImageTitleRowCell()
    }
}
