//  ImageViewController.swift
//  My Swift iOS App
//  Created by Admin on 16/03/22.


import UIKit

@available(iOS 13.0, *)
class ImageViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblView: UILabel!
    
    var mainimg: UIImage!
    var mainlbl: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = mainimg
        lblView.text = mainlbl
        
        if #available(iOS 13.0, *) {
            let barAppearance = UINavigationBarAppearance()
            
            barAppearance.backgroundColor = .systemOrange
            barAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            navigationItem.title = "Slider"
            navigationItem.standardAppearance = barAppearance
            navigationItem.scrollEdgeAppearance = barAppearance
        } else {
            // Fallback on earlier versions
        }
        
    }
    
}
