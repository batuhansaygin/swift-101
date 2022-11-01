//
//  MainpageProtocol.swift
//  iOSRestaurantApp
//
//  Created by Batuhan Saygin on 1.11.2022.
//

import Foundation

protocol ViewToPresenterMainPageProtocol {
    var mainPageInteractor: PresenterToInteractorMainPageProtocol? {get set}
    var mainPageView: PresenterToViewMainPageProtocol? {get set}
    
    func getFoods()
    func getFoodCount(userName: String)
}

protocol PresenterToInteractorMainPageProtocol {
    var mainPagePresenter: InteractorToPresenterMainPageProtocol? {get set}

    func getFoodList()
    func getFoodCountOfBasket(userName: String)
}

protocol InteractorToPresenterMainPageProtocol {
    func dataToPresenter(foodList: Array<Yemekler>)
    func dataToPresenter(foodCount: Int)
}

protocol PresenterToViewMainPageProtocol {
    func dataToView(foodList: Array<Yemekler>)
    func dataToView(foodCount: Int)
}

protocol PresenterToRouterMainPageProtocol {
    static func createModule(ref: MainPageVC)
}
