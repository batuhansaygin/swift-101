//
//  ViewController.swift
//  iOSRestaurantApp
//
//  Created by Batuhan Saygin on 1.11.2022.
//

import UIKit

class MainPageVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var mainPagePresenterObject: ViewToPresenterMainPageProtocol?
    var foodList = [Yemekler]()

    override func viewDidLoad() {
        super.viewDidLoad()
        MainPageRouter.createModule(ref: self)
        collectionView.dataSource = self
        collectionView.delegate = self
        setupNavBar()
        
        let design = UICollectionViewFlowLayout()
        design.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        design.minimumInteritemSpacing = 10
        design.minimumLineSpacing = 10
        let height = collectionView.frame.size.width
        let cellWidth = (height - 30) / 3
        design.itemSize = CGSize(width: cellWidth, height: cellWidth * 1.4)
        collectionView.collectionViewLayout = design
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mainPagePresenterObject?.getFoods()
        mainPagePresenterObject?.getFoodCount(userName: "deneme_kullanici")
    }
    
    func setupNavBar() {
        let navbarAppearence = UINavigationBarAppearance()
        self.navigationController?.navigationBar.tintColor = .white
        navbarAppearence.backgroundColor = .systemGreen
        navbarAppearence.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navbarAppearence.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.standardAppearance = navbarAppearence
        navigationController?.navigationBar.scrollEdgeAppearance = navbarAppearence
    }
}

extension MainPageVC: PresenterToViewMainPageProtocol {
    func dataToView(foodList: Array<Yemekler>) {
        self.foodList = foodList
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }
    
    func dataToView(foodCount: Int) {
        let icon = self.navigationItem.rightBarButtonItem
        
        if (foodCount >= 1) {
            icon?.setBadge(text: "\(foodCount)")
        } else {
            icon?.removeBadge()
        }
    }
}

extension MainPageVC: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let food  = foodList[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "foodCell", for: indexPath) as! FoodCollectionViewCell

        cell.showImage(imageName: food.yemek_resim_adi!)
        cell.title.text = food.yemek_adi!
        
        cell.layer.cornerRadius = 15
        cell.layer.borderColor = UIColor.gray.cgColor
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let food = foodList[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: food)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            if let food = sender as? Yemekler {
                let targetController = segue.destination as! DetailController
                targetController.foods = food
            }
        }
    }


}

