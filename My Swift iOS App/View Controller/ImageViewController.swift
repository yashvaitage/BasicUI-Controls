//
//  ImageViewController.swift
//  My Swift iOS App
//
//  Created by Admin on 16/03/22.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblView: UILabel!
    
    var mainimg: UIImage!
    var mainlbl: String!
    override func viewDidLoad() {
        super.viewDidLoad()

        imgView.image = mainimg
        lblView.text = mainlbl
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
