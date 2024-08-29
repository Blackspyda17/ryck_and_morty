//
//  ListOfCharactersRouter.swift
//  ryck_and_morty
//
//  Created by Gilberth Paez Ortiz on 28/8/24.
//

import Foundation
import SwiftUI

protocol ListOfCharactersRouterProtocol {
    associatedtype ContentView: View
    static func createModule() -> ContentView
}

class ListOfCharactersRouter: ListOfCharactersRouterProtocol {
    static func createModule() -> some View {
        let viewModel = ListOfCharactersViewModel()
        let view = ListOfCharactersView(viewModel:viewModel)
        let interactor = ListOfCharactersInteractor()
        let presenter = ListOfCharactersPresenter(view: viewModel)
        
        viewModel.presenter = presenter
        presenter.interactor = interactor
        interactor.presenter = presenter
        return view
    }
}


