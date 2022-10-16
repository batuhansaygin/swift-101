//
//  YapilacakKayitInteractor.swift
//  Odev7
//
//  Created by Batuhan Saygin on 16.10.2022.
//

import Foundation

class YapilacakKayitInteractor : PresenterToInteractorYapilacakKayitProtocol {
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("todo.sqlite")
        
        db = FMDatabase(path: kopyalanacakYer.path)
    }
    
    func yapilacakEkle(yapilacak_is: String) {
        db?.open()
        
        do {
            try db!.executeUpdate("INSERT INTO Yapilacaklar (yapilacak_is) VALUES (?)", values: [yapilacak_is])
            } catch {
                print(error.localizedDescription)
        }
        
        db?.close()
    }
}
