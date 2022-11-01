//
//  MainPageInteractor.swift
//  iOSRestaurantApp
//
//  Created by Batuhan Saygin on 1.11.2022.
//

import Foundation
import Alamofire


class MainPageInteractor : PresenterToInteractorMainPageProtocol {
    
    var mainPagePresenter: InteractorToPresenterMainPageProtocol?
    
    func getFoodList() {
        AF.request("http://kasimadalan.pe.hu/yemekler/tumYemekleriGetir.php", method: .get).response { response in
            if let data = response.data {
                
                do {
                    let result = try JSONDecoder().decode(YemeklerCevap.self, from: data)
                    
                    if let foodList = result.yemekler {
                        self.mainPagePresenter?.dataToPresenter(foodList: foodList)
                    }
                    
                }catch {
                    print("Error: \(error.localizedDescription)")
                }
            }
        }
    }
    
    func getFoodCountOfBasket(userName: String) {
        let param = ["kullanici_adi": userName]
        
        AF.request("http://kasimadalan.pe.hu/yemekler/sepettekiYemekleriGetir.php", method: .post, parameters: param).response { res in
            if let data = res.data {
                do {
                    let result = try JSONDecoder().decode(SepetCevap.self, from: data)
                    self.mainPagePresenter?.dataToPresenter(foodCount: result.sepet_yemekler?.count ?? 0)
                }catch {
                    print(error.localizedDescription)
                    self.mainPagePresenter?.dataToPresenter(foodCount: 0)
                }
            }
        }
    }
}
