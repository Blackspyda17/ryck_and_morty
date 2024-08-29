//
//  CharactersGrid.swift
//  ryck_and_morty
//
//  Created by Gilberth Paez Ortiz on 28/8/24.
//

import SwiftUI

struct CharactersGrid: View {
    
    let characters : [Character]

    private let columns : [GridItem] = [
        .init(.flexible(),spacing:10),
        .init(.flexible(),spacing:10)
    ]
    
    init(characters : [Character]) {
        self.characters = characters
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, content: {
                ForEach(characters) {character in
                    CharacterCell(character: character)
                }
            })
            .padding(.horizontal,10)
        }
    }
}
