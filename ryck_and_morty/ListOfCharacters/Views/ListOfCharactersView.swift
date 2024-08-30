//
//  ListOfCharactersView.swift
//  ryck_and_morty
//
//  Created by Gilberth Paez Ortiz on 28/8/24.
//

import SwiftUI

struct ListOfCharactersView: View {
    @ObservedObject var viewModel: ListOfCharactersViewModel
    
    var body : some View {
        VStack {
                    Text("Personajes de la serie - Ryck & Morty")
                .font(.largeTitle)
                        .padding()
                    CharactersGrid(characters: viewModel.characters)
                        .onAppear {
                            viewModel.fetchManyCharacters()
                        }
                }
    }
}

#Preview {
    ListOfCharactersRouter.createModule()
}
