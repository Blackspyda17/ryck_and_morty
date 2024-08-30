//
//  ListOfCharactersInteractor.swift
//  ryck_and_morty
//
//  Created by Gilberth Paez Ortiz on 28/8/24.
//

import Foundation
import RickAndMortyAPI

protocol ListOfCharactersInteractorProtocol: AnyObject {
    func fetchCharacters()
}

class ListOfCharactersInteractor: ListOfCharactersInteractorProtocol {
    private var characters: [Character] = []
    private var page: Int = 0
    weak var presenter: ListOfCharactersPresenter?
    
    func fetchCharacters() {
        ApolloManager.shared.apollo.fetch(query: AllCharactersQuery(page: GraphQLNullable<Int>(integerLiteral: page) )) { [weak self] result in
            guard let self = self else {
                return
            }
            switch result {
            case .success(let graphQLResult):
                if let results = graphQLResult.data?.characters?.results, let nextPage = graphQLResult.data?.characters?.info?.next {
                    for result in results {
                        // Extract relevant data from each "result" and create a Character object
                        let character = Character(id: result?.id ?? "", name: result?.name ?? "",
                                                  statusString: result?.status ?? "", species: result?.species ?? "",
                                                  type: result?.type ?? "", genderString: result?.gender ?? "",
                                                  image: result?.image ?? "") // Fill in properties
                        characters.append(character)
                    }
                    page = nextPage
                    presenter?.didFetchCharacters(characters)
                } else {
                    // Handle errors or missing data
                }
                
                if let errors = graphQLResult.errors {
                    print(errors)
                }
            case .failure(let error):
                print(error)
            }
            
        }
       
    }
    
}
