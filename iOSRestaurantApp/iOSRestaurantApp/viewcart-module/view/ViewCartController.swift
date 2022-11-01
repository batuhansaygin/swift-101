//
//  ViewCartController.swift
//  iOSRestaurantApp
//
//  Created by Batuhan Saygin on 1.11.2022.
//

import UIKit

class ViewCartController: UIViewController {

    var cartPresenterObject: ViewToPresenterCartProtocol?
    var cartList = [Sepet]()
    
    @IBOutlet weak var cartTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ViewCartRouter.createModule(ref: self)
        cartTableView.delegate = self
        cartTableView.dataSource = self
        
        self.navigationItem.hidesBackButton = true
        let customBackButton = UIBarButtonItem(image: UIImage(systemName: "arrow.backward"), style: .plain, target: self, action: #selector(goToMain))
        self.navigationItem.leftBarButtonItem = customBackButton
    }
    
    // custom back to root vc
    @objc func goToMain() {
        for controller in self.navigationController!.viewControllers {
              if let target = controller as? MainPageVC {
                  self.navigationController!.popToViewController(target, animated: true)
              }
        }
      }
    
    override func viewWillAppear(_ animated: Bool) {
        cartPresenterObject?.getAllCart()
    }
}

extension ViewCartController: PresenterToViewCartProtocol {
    func dataToView(cartList: Array<Sepet>) {
        self.cartList = cartList
        DispatchQueue.main.async {
            self.cartTableView.reloadData()
        }
    }
}

extension ViewCartController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return cartList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let product = cartList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath) as! ViewCartTableViewCell
        
        cell.selectionStyle = .none
        
        cell.productImage.setNetworkImage(imageName: product.yemek_resim_adi!)
        cell.productTitle.text = product.yemek_adi!
        cell.productCount.text = "\(product.yemek_siparis_adet!)"
        cell.productTotalPrice.text = "Toplam: \(Int(product.yemek_siparis_adet!)! * Int(product.yemek_fiyat!)!) ₺"

        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let product = cartList[indexPath.row]
        
        let alert = UIContextualAction(style: .destructive, title: "Kaldır") {(action, view, bool) in
            self.cartPresenterObject?.delete(id: product.sepet_yemek_id!)
        }
        
        return UISwipeActionsConfiguration(actions: [alert])
    }
}
