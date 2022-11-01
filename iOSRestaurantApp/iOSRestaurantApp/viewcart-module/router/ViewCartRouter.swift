//
//  ViewCartRouter.swift
//  iOSRestaurantApp
//
//  Created by Batuhan Saygin on 1.11.2022.
//

import Foundation

class ViewCartRouter: PresenterToRouterCartProtocol {
    static func createModule(ref: ViewCartController) {
        let presenter = ViewCartPresenter()
        
        ref.cartPresenterObject = presenter
        ref.cartPresenterObject?.cartInteractor = ViewCartInteractor()
        ref.cartPresenterObject?.cartView = ref
        ref.cartPresenterObject?.cartInteractor?.cartPresenter = presenter
    }
}
