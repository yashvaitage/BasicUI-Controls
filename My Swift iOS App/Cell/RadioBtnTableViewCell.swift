//
//  RadioBtnTableViewCell.swift
//  My Swift iOS App
//
//  Created by Admin on 08/04/22.
//

import UIKit

class RadioBtnTableViewCell: UITableViewCell {

    @IBOutlet weak var radioBtnLbl: UILabel!
    @IBOutlet weak var radioBtnImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
