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
//    
//    static private var apollo = ApolloClient(url: URL(string: "https://rickandmortyapi.com/graphql")!)
//    
//    static func perform<T:GraphQLQuery, U: Decodable>(query : T, completion: @escaping ((APIResponse<U>)->())) {
//          apollo.fetch(query: query) { result in
//              if case let .success(graphqlResult) = result {
//                  guard let data = graphqlResult.data else {return}
//                  do {
//                      let jsonData = try JSONSerialization.data(withJSONObject: data, options: .fragmentsAllowed)
//                      let response = try JSONDecoder().decode(APIResponse<U>.self, from: jsonData)
//                      completion(response)
//                  } catch {
//                      print(error.localizedDescription)
//                  }
//              }
//          }
//      }
    
}
