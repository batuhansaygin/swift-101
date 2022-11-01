//
//  MainpageRouter.swift
//  iOSRestaurantApp
//
//  Created by Batuhan Saygin on 1.11.2022.
//

import Foundation

class MainPageRouter : PresenterToRouterMainPageProtocol {
    static func createModule(ref: MainPageVC) {
        let presenter = MainPagePresenter()
        
        ref.mainPagePresenterObject = presenter
        ref.mainPagePresenterObject?.mainPageInteractor = MainPageInteractor()
        ref.mainPagePresenterObject?.mainPageView = ref
        ref.mainPagePresenterObject?.mainPageInteractor?.mainPagePresenter = presenter
    }
}
