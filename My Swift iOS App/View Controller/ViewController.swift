//  ViewController.swift
//  My Swift iOS App
//
//  Created by Admin on 14/02/22.

import UIKit

class ViewController: UIViewController {
    
    //==================Outlets=================
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myBtn: UIButton!
    @IBOutlet weak var sliderLbl: UILabel!
    
    //==================Properties======================
    
    //=================Lifecycle Methods=================
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myBtn.backgroundColor = UIColor.systemGray
        myBtn.setTitleColor(UIColor.white, for: UIControl.State.normal)
        myBtn.setTitle("Hit Me!", for: UIControl.State.normal)
        
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
        
        
        self.tabBarController?.tabBar.isHidden = false
        
        let alert = UIAlertController(title: "Welcome", message: "Hello Nishant!, Welcome to your app", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Thank You!", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    //===================Action Methods====================
    
    @IBAction func myBtnPressed(_ sender: Any) {
        myLabel.textColor = UIColor.black
        myLabel.backgroundColor = UIColor.systemOrange
        myLabel.textAlignment = NSTextAlignment.center
        myLabel.font = UIFont.systemFont(ofSize: 26)
        myLabel.text = "Good Morning iOS Team"
    }
    
    @IBAction func sliderUpdate(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        sliderLbl.text = "\(currentValue)"
    }
    
    @IBAction func basicUIBtnTapped(_ sender: UIButton) {
        
        if #available(iOS 13.0, *) {
            if let basicUIVC = UIStoryboard.init(name: "BasicUIStoryboard", bundle: Bundle.main).instantiateViewController(withIdentifier: "BasicUIViewController") as? BasicUIViewController
            {
                self.navigationController?.pushViewController(basicUIVC, animated: true)
            }
        } else {
            // Fallback on earlier versions
        }
    }
    
}




