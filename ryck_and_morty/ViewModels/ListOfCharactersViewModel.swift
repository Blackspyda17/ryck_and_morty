//
//  ListOfCharactersViewModel.swift
//  ryck_and_morty
//
//  Created by Gilberth Paez Ortiz on 28/8/24.
//


import SwiftUI

class ListOfCharactersViewModel: ObservableObject {
    @Published var characters: [Character] = []
    
    var presenter : ListOfCharactersPresenter?
    
    init(){
        self.presenter = ListOfCharactersPresenter(view: self)
    }
    
    func displayCharacters(_ characters: [Character]) {
        DispatchQueue.main.async {
            self.characters = characters
        }
    }
    
    func fetchManyCharacters(){
        presenter?.fetchCharacters()
    }
    
}
