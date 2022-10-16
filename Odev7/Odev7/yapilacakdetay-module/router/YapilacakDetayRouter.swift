//
//  YapilacakDetayRouter.swift
//  Odev7
//
//  Created by Batuhan Saygin on 16.10.2022.
//

import Foundation

class YapilacakDetayRouter : PresenterToRouterYapilacakDetayProtocol {
    static func createModule(ref: YapilacakDetayVC) {
        ref.yapilacakDetayPresenterNesnesi = YapilacakDetayPresenter()
        ref.yapilacakDetayPresenterNesnesi?.yapilacakDetayInteractor = YapilacakDetayInteractor()
    }
}
