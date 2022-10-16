//
//  YapilacakKayitRouter.swift
//  Odev7
//
//  Created by Batuhan Saygin on 16.10.2022.
//

import Foundation

class YapilacakKayitRouter : PresenterToRouterYapilacakKayitProtocol {
    static func createModule(ref: YapilacakKayitVC) {
        ref.yapilacakKayitPresenterNesnesi = YapilacakKayitPresenter()
        ref.yapilacakKayitPresenterNesnesi?.yapilacakKayitInteractor = YapilacakKayitInteractor()
    }
}
