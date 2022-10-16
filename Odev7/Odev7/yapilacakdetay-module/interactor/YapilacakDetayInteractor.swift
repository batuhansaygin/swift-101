//
//  YapilacakDetayInteractor.swift
//  Odev7
//
//  Created by Batuhan Saygin on 16.10.2022.
//

import Foundation

class YapilacakDetayInteractor : PresenterToInteractorYapilacakDetayProtocol {
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("todo.sqlite")
        
        db = FMDatabase(path: kopyalanacakYer.path)
    }
    
    func yapilacakGuncelle(yapilacak_id: Int, yapilacak_is: String) {
        db?.open()
        
        do {
            try db!.executeUpdate("UPDATE Yapilacaklar SET yapilacak_is = ? WHERE yapilacak_id = ?", values: [yapilacak_is, yapilacak_id])
            } catch {
                print(error.localizedDescription)
        }
        
        db?.close()
    }
}
