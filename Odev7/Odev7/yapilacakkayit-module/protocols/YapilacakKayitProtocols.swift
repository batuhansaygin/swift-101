//
//  YapilacakKayitProtocols.swift
//  Odev7
//
//  Created by Batuhan Saygin on 16.10.2022.
//

import Foundation

protocol ViewToPresenterYapilacakKayitProtocol {
    var yapilacakKayitInteractor:PresenterToInteractorYapilacakKayitProtocol? {get set}
    
    func ekle(yapilacak_is:String)
}

protocol PresenterToInteractorYapilacakKayitProtocol {
    func yapilacakEkle(yapilacak_is:String)
}

protocol PresenterToRouterYapilacakKayitProtocol {
    static func createModule(ref:YapilacakKayitVC)
}
