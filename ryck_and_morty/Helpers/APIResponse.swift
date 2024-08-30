//
//  APIResponse.swift
//  ryck_and_morty
//
//  Created by Gilberth Paez Ortiz on 29/8/24.
//

import Foundation
import RickAndMortyAPI


class APIResponse<T:Decodable> : Decodable {
    
    let info : Info
    let results : [T]
    
}
