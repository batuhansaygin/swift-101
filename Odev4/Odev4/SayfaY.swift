//
//  SayfaY.swift
//  Odev4
//
//  Created by Batuhan Saygin on 2.10.2022.
//

import UIKit

class SayfaY: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let goToAnasayfa = navigationController?.viewControllers.first {
                        navigationController?.viewControllers = [goToAnasayfa, self]
                    }
        view.backgroundColor = .yellow
        
        setCustomTitle()

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAnasayfa(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    func setCustomTitle() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Anasayfa", style: .plain, target: nil, action: nil)
    }

}
