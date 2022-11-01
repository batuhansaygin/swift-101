//
//  MainPagePresenter.swift
//  iOSRestaurantApp
//
//  Created by Batuhan Saygin on 1.11.2022.
//

import Foundation

class MainPagePresenter : ViewToPresenterMainPageProtocol {
  
    var mainPageInteractor: PresenterToInteractorMainPageProtocol?
    var mainPageView: PresenterToViewMainPageProtocol?
    
    func getFoods() {
        mainPageInteractor?.getFoodList()
    }
    
    func getFoodCount(userName: String) {
        mainPageInteractor?.getFoodCountOfBasket(userName: userName)
    }
}

extension MainPagePresenter : InteractorToPresenterMainPageProtocol {
    func dataToPresenter(foodList: Array<Yemekler>) {
        mainPageView?.dataToView(foodList: foodList)
    }
    
    func dataToPresenter(foodCount: Int) {
        mainPageView?.dataToView(foodCount: foodCount)
    }
}
