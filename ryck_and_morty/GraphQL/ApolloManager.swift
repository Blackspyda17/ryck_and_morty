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

    static let shared = ApolloManager()

    private init() {}

    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://rickandmortyapi.com/graphql")!)
    
}
