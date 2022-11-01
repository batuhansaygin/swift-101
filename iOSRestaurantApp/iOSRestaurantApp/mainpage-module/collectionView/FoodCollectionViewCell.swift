//
//  FoodCollectionViewCell.swift
//  iOSRestaurantApp
//
//  Created by Batuhan Saygin on 1.11.2022.
//

import UIKit

class FoodCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var title: UILabel!
    
        func showImage(imageName: String) {
            image.setNetworkImage(imageName: imageName)
    }

}
