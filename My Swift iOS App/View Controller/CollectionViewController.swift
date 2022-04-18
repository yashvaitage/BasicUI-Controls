//
//  CollectionViewController.swift
//  My Swift iOS App
//
//  Created by Admin on 16/03/22.
//

import UIKit

@available(iOS 13.0, *)
class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var arrlbl = ["KTM", "Pulser NS 200", "Pulser NS Combo", "Pulser NS Black", "Shine", "Rolyal Enfield", "Boat", "Mountain", "Bus"]
    var arrimg = ["KTM", "Pulser", "Pulser3", "Pulser Black", "Shine", "RolyalEnfield", "img1", "img2", "img3"]
    
    @IBOutlet weak var collectionView: UICollectionView!
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
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrlbl.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.wallimg.image = UIImage(named: arrimg[indexPath.row])
        cell.walllbl.text = arrlbl[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imageDetail: ImageViewController = self.storyboard?.instantiateViewController(withIdentifier: "ImageViewController") as! ImageViewController
        imageDetail.mainlbl = arrlbl[indexPath.row]
        imageDetail.mainimg = UIImage(named: arrimg[indexPath.row])
        self.navigationController?.pushViewController(imageDetail, animated: true)
        //        ImageViewController.hidesBottomBarWhenPushed = true
        //        ImageViewController.tabBarController?.hidesBottomBarWhenPushed = true
    }
    
}
