//
//  ListOfCharactersPresenter.swift
//  ryck_and_morty
//
//  Created by Gilberth Paez Ortiz on 28/8/24.
//

import SwiftUI

class ListOfCharactersPresenter {
    
    var view: ListOfCharactersViewModel?
    var interactor: ListOfCharactersInteractor?
    var router: ListOfCharactersRouter?
    
    init(view: ListOfCharactersViewModel) {
        self.view = view
    }
    
    func fetchCharacters(){
        interactor?.fetchCharacters()
    }
    
    func didFetchCharacters(_ characters: [Character]) {
        view?.displayCharacters(characters)
        fetchCharacters()
    }
    
    func linkBuilder<Content: View>(character: Character, @ViewBuilder content: () -> Content) -> some View {
        NavigationLink(destination: CharacterDetailsView(character: character)) {
            content()
        }
    }
}
