//
//  AsyncImage.swift
//  ryck_and_morty
//
//  Created by Gilberth Paez Ortiz on 28/8/24.
//

import SwiftUI

struct AsyncImage: View {
    
    @State var url : String
    @State private var image : UIImage = UIImage()
    
    var body: some View {
        Image(uiImage: image)
        .resizable()
        .scaledToFit()
        .redacted(reason: image == UIImage() ? .placeholder : [])
            .onAppear {
                guard let url = URL(string: url) else {return}
                URLSession.shared.dataTask(with: url) { data, _, error in
                    guard let data = data, error == nil else {return}
                    guard let newImage = UIImage(data: data) else {return}
                    DispatchQueue.main.async { [self] in
                        image = newImage
                    }
                }.resume()
            }
            .onDisappear {
                image = UIImage()
            }
    }
}
