//
//  YapilacakKayitPresenter.swift
//  Odev7
//
//  Created by Batuhan Saygin on 16.10.2022.
//

import Foundation

class YapilacakKayitPresenter : ViewToPresenterYapilacakKayitProtocol {
    var yapilacakKayitInteractor: PresenterToInteractorYapilacakKayitProtocol?
    
    func ekle(yapilacak_is: String) {
        yapilacakKayitInteractor?.yapilacakEkle(yapilacak_is: yapilacak_is)
    }
}
