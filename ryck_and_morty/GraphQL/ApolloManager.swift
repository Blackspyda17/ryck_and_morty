//
//  ApolloManager.swift
//  ryck_and_morty
//
//  Created by Gilberth Paez Ortiz on 28/8/24.
//

import Foundation
import Apollo
import RickAndMortyAPI

class ApolloManager {
    
    static private var apolloClient = ApolloClient(url: URL(string: "https://rickandmortyapi.com/graphql")!)
   
    static func callCharacters(){
        apolloClient.fetch(query: AllCharactersQuery(page: 0)){
        result in
            switch result{
                
            }
        }
    }
    
}
