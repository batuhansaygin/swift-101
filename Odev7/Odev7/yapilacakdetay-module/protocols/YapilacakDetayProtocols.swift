//
//  YapilacakDetayProtocols.swift
//  Odev7
//
//  Created by Batuhan Saygin on 16.10.2022.
//

import Foundation

protocol ViewToPresenterYapilacakDetayProtocol {
    var yapilacakDetayInteractor:PresenterToInteractorYapilacakDetayProtocol? {get set}
    
    func guncelle(yapilacak_id:Int,yapilacak_is:String)
}

protocol PresenterToInteractorYapilacakDetayProtocol {
    func yapilacakGuncelle(yapilacak_id:Int,yapilacak_is:String)
}

protocol PresenterToRouterYapilacakDetayProtocol {
    static func createModule(ref:YapilacakDetayVC)
}
