//
//  CharactersGrid.swift
//  ryck_and_morty
//
//  Created by Gilberth Paez Ortiz on 28/8/24.
//

import SwiftUI

struct CharactersGrid: View {
    
    let viewModel : ListOfCharactersViewModel

    private let columns : [GridItem] = [
        .init(.flexible(),spacing:10),
        .init(.flexible(),spacing:10)
    ]
    
    init(viewModel : ListOfCharactersViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, content: {
                ForEach(viewModel.characters) {character in
                    viewModel.presenter?.linkBuilder(character: character){
                        CharacterCell(character: character)
                    }
                }
            })
            .padding(.horizontal,10)
        }
    }
}
