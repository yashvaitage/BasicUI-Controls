//
//  CollectionViewController.swift
//  My Swift iOS App
//
//  Created by Admin on 16/03/22.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var arrlbl = ["KTM", "Pulser", "Shine", "RolyalEnfield", "Boat", "Mountain", "Bus"]
    var arrimg = ["KTM", "Pulser", "Shine", "RolyalEnfield", "img1", "img2", "img3"]

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

       
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
    }

}
