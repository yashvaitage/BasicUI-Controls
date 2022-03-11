//
//  SegmentViewController.swift
//  My Swift iOS App
//
//  Created by Admin on 11/03/22.
//

import UIKit

class SegmentViewController: UIViewController {
    @IBOutlet weak var mySegCtrl: UISegmentedControl!
    @IBOutlet weak var myImgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func segChangedAction(_ sender: UISegmentedControl) {
        if mySegCtrl.selectedSegmentIndex == 0
        {
            myImgView.image = UIImage(named: "img1")
        }
        else if mySegCtrl.selectedSegmentIndex == 1{
            myImgView.image = UIImage(named: "img2")
        }
        else if mySegCtrl.selectedSegmentIndex == 2{
            myImgView.image = UIImage(named: "img3")
        }
    }
}
