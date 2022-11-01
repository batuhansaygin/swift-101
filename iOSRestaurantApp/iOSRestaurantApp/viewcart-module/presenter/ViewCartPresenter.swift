//
//  ViewCartPresenter.swift
//  iOSRestaurantApp
//
//  Created by Batuhan Saygin on 1.11.2022.
//

import Foundation

class ViewCartPresenter: ViewToPresenterCartProtocol {
    var cartInteractor: PresenterToInteractorCartProtocol?
    
    var cartView: PresenterToViewCartProtocol?
    
    func getAllCart() {
        cartInteractor?.getAllCartList()
    }
    
    func delete(id: String) {
        cartInteractor?.deleteProduct(id: id)
    }
}

extension ViewCartPresenter: InteractorToPresenterCartProtocol {
    func dataToPresenter(cartList: Array<Sepet>) {
        cartView?.dataToView(cartList: cartList)
    }
}
