//
//  CharacterCell.swift
//  ryck_and_morty
//
//  Created by Gilberth Paez Ortiz on 28/8/24.
//

import SwiftUI

struct CharacterCell: View {
    
    @State private var image : UIImage = UIImage()
    let character : Character
    
    var body: some View {
                VStack(alignment:.leading) {
                    AsyncImage(url: character.image)
                        .cornerRadius(15)
                    
                    Text(character.name)
                        .lineLimit(1)
                        .truncationMode(.tail)
                        .padding(.trailing,15)
                        .foregroundColor(Color(.label))
                }
    }
}
