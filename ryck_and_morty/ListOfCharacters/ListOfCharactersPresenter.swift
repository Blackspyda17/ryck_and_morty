//
//  ListOfCharactersPresenter.swift
//  ryck_and_morty
//
//  Created by Gilberth Paez Ortiz on 28/8/24.
//

import Foundation

protocol ListOfCharactersPresenterProtocol:AnyObject {
    func didFetchCharacters(_ characters:[Character])
}

protocol ListOfCharactersViewProtocol: AnyObject {
    func displayCharacters(_ characters:[Character])
}

class ListOfCharactersPresenter: ListOfCharactersPresenterProtocol {
    
    weak var view: ListOfCharactersViewProtocol?
    var interactor: ListOfCharactersInteractorProtocol?
    
    init(view: ListOfCharactersViewProtocol) {
        self.view = view
    }
    
    func fetchCharacters(){
        interactor?.fetchCharacters()
    }
    
    func didFetchCharacters(_ characters: [Character]) {
        view?.displayCharacters(characters)
        fetchCharacters()
    }
    
    
}
