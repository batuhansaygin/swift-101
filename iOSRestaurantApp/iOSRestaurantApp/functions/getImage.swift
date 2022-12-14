//
//  getImage.swift
//  iOSRestaurantApp
//
//  Created by Batuhan Saygin on 1.11.2022.
//

import Foundation
import UIKit
import Kingfisher

extension UIImageView {
    
    func setNetworkImage(imageName: String) {
        if let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(imageName)") {
            DispatchQueue.main.async {
                self.kf.setImage(with: url)
            }
        }
    }
}
