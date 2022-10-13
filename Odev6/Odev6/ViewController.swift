//
//  ViewController.swift
//  Odev6
//
//  Created by Batuhan Saygin on 13.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBarTextField: UITextField!
    
    @IBOutlet weak var alertButton: UIButton!
    
    @IBOutlet weak var logoBackground: UIView!
    
    @IBOutlet weak var kuponlarImageView: UIImageView!
    
    @IBOutlet weak var saatlikImageView: UIImageView!
    
    @IBOutlet weak var kampanyalarImageView: UIImageView!
    
    @IBOutlet weak var firsatImageView: UIImageView!
    
    @IBOutlet weak var sliderImageView: UIView!
    
    @IBOutlet weak var sliderPaginationView: UIView!
    
    @IBOutlet weak var modaImageView: UIImageView!
    
    @IBOutlet weak var elektronikImageView: UIImageView!
    
    @IBOutlet weak var evImageView: UIImageView!
    
    @IBOutlet weak var anneImageView: UIImageView!
    
    @IBOutlet weak var kozmetikImageView: UIImageView!
    
    @IBOutlet weak var mucevherImageView: UIImageView!
    
    @IBOutlet weak var sporImageView: UIImageView!
    
    @IBOutlet weak var tumuImageView: UIImageView!
    
    @IBOutlet weak var ayakkabiImageView: UIImageView!
    
    @IBOutlet weak var kolyeImageView: UIImageView!
    
    @IBOutlet weak var utuImageView: UIImageView!
    
    @IBOutlet weak var mobileOzelBackground: UIView!
    
    @IBOutlet weak var gununSuperFirsatiBackground: UIView!
    
    @IBOutlet weak var superFirsatlarBackground: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoBackground.layer.cornerRadius = 20
        logoBackground.clipsToBounds = true
        logoBackground.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
        searchBarTextField.layer.cornerRadius = 20
        searchBarTextField.clipsToBounds = true
        searchBarTextField.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        searchBarTextField.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        searchBarTextField.layer.borderWidth = 1
        
        alertButton.layer.cornerRadius = alertButton.frame.width / 2
        alertButton.layer.masksToBounds = true
        
        kuponlarImageView.layer.cornerRadius = 15
        kuponlarImageView.clipsToBounds = true
        
        saatlikImageView.layer.cornerRadius = 15
        saatlikImageView.clipsToBounds = true
        
        kampanyalarImageView.layer.cornerRadius = 15
        kampanyalarImageView.clipsToBounds = true
        
        firsatImageView.layer.cornerRadius = 15
        firsatImageView.clipsToBounds = true
        
        sliderImageView.layer.cornerRadius = 7
        sliderImageView.clipsToBounds = true

        sliderPaginationView.layer.cornerRadius = 6
        sliderPaginationView.clipsToBounds = true
        
        modaImageView.layer.cornerRadius = 8
        modaImageView.clipsToBounds = true
        
        evImageView.layer.cornerRadius = 8
        evImageView.clipsToBounds = true
        
        elektronikImageView.layer.cornerRadius = 8
        elektronikImageView.clipsToBounds = true
        
        anneImageView.layer.cornerRadius = 8
        anneImageView.clipsToBounds = true
        
        kozmetikImageView.layer.cornerRadius = 8
        kozmetikImageView.clipsToBounds = true
        
        mucevherImageView.layer.cornerRadius = 8
        mucevherImageView.clipsToBounds = true
        
        sporImageView.layer.cornerRadius = 8
        sporImageView.clipsToBounds = true
        
        tumuImageView.layer.cornerRadius = 8
        tumuImageView.clipsToBounds = true
        
        ayakkabiImageView.layer.borderColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.35).cgColor
        ayakkabiImageView.layer.borderWidth = 0.7
        
        kolyeImageView.layer.borderColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.35).cgColor
        kolyeImageView.layer.borderWidth = 0.7
        
        utuImageView.layer.borderColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.35).cgColor
        utuImageView.layer.borderWidth = 0.7
    }

    /*
    mobileOzelBackground.layer.cornerRadius = 15
    mobileOzelBackground.clipsToBounds = true
    mobileOzelBackground.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    
    gununSuperFirsatiBackground.layer.cornerRadius = 15
    gununSuperFirsatiBackground.clipsToBounds = true
    gununSuperFirsatiBackground.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    
    superFirsatlarBackground.layer.cornerRadius = 15
    superFirsatlarBackground.clipsToBounds = true
    superFirsatlarBackground.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
*/
}
