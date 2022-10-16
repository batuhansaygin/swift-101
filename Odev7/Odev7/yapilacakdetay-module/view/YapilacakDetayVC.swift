//
//  YapilacakDetayVC.swift
//  Odev7
//
//  Created by Batuhan Saygin on 16.10.2022.
//

import UIKit

class YapilacakDetayVC: UIViewController {

    @IBOutlet weak var tfYapilacakIs: UITextField!
    
    var yapilacak:Yapilacaklar?
    
    var yapilacakDetayPresenterNesnesi:ViewToPresenterYapilacakDetayProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        YapilacakDetayRouter.createModule(ref: self)

        if let y = yapilacak {
            tfYapilacakIs.text = y.yapilacak_is
        }
    }

    @IBAction func buttonGuncelle(_ sender: Any) {
        if let yi = tfYapilacakIs.text, let y = yapilacak {
            yapilacakDetayPresenterNesnesi?.guncelle(yapilacak_id: y.yapilacak_id!, yapilacak_is: yi)
        }
        navigationController?.popToRootViewController(animated: true)
    }
    
}
