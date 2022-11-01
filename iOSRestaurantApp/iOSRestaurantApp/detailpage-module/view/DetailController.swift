//
//  DetailController.swift
//  iOSRestaurantApp
//
//  Created by Batuhan Saygin on 1.11.2022.
//

import UIKit

class DetailController: UIViewController {

    var foods: Yemekler?
    var detailPresenterObject: ViewToPresenterDetailProtocol?
    
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DetailRouter.createModule(ref: self)
       
        stepper.value = 1
        countLabel.text = "\(Int(stepper.value))"
        totalPriceLabel.text = "Toplam: \((foods?.yemek_fiyat!)!) ₺"
        
        if let food = foods {
            self.navigationItem.title = "\(food.yemek_adi!)"
            foodImage.setNetworkImage(imageName: food.yemek_resim_adi!)
            titleLabel.text = food.yemek_adi!
            priceLabel.text = "\(food.yemek_fiyat!) ₺"
        }
    }
    

    @IBAction func stepperControl(_ sender: UIStepper) {
        countLabel.text = "\(Int(sender.value))"
        totalPriceLabel.text =  "Toplam: \( Int(sender.value) * Int((foods?.yemek_fiyat)!)!) ₺"
    }
    
    @IBAction func addToCartTapped(_ sender: Any) {
        detailPresenterObject?.add(yemek_adi: (foods?.yemek_adi)!, yemek_resim_adi: (foods?.yemek_resim_adi)!, yemek_fiyat: (foods?.yemek_fiyat)!, yemek_siparis_adet: Int(self.stepper.value), kullanici_adi: "deneme_kullanici")
    }
}

extension DetailController : PresenterToViewDetailProtocol {
    func dataToView(isSuccess: Bool) {

        print(isSuccess)
        
        let alert = UIAlertController(title: "Saygın Cafe", message: "Başarıyla sepete eklendi.", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Siparişe Devam Et", style: .default) { action in
            self.navigationController?.popToRootViewController(animated: true)
        }
        
        let cartAction = UIAlertAction(title: "Sepeti Görüntüle", style: .default) {action in
            self.performSegue(withIdentifier: "toCart", sender: nil)
        }
        
        alert.addAction(okAction)
        alert.addAction(cartAction)
        
        if (isSuccess) {
            present(alert, animated: true)
        }
    }
}
