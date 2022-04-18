//  BasicUIViewController.swift
//  My Swift iOS App
//  Created by Admin on 08/04/22.

import UIKit

class BasicUIViewController: UIViewController {
    
    //=====================Outlets========================
    
    //=====================Properties=====================
    
    //=================View Lifecycle Methods================
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    //======================Action Methods===============
    
    @IBAction func radioBtnTapped(_ sender: Any) {
        if let radioBtnVC = UIStoryboard.init(name: "RadioBtnStoryboard", bundle: Bundle.main).instantiateViewController(withIdentifier: "RadioBtnStoryboard") as? RadioBtnViewController{
            self.navigationController?.pushViewController(radioBtnVC, animated: true)
            
        }
    }
    
    @IBAction func checkBoxBtnTapped(_ sender: Any) {
        if let checkBtnVC = UIStoryboard.init(name: "CheckBoxStoryboard", bundle: Bundle.main).instantiateViewController(withIdentifier: "CheckBoxViewController") as? CheckBoxViewController{
            self.navigationController?.pushViewController(checkBtnVC, animated: true)
        }
    }
}
