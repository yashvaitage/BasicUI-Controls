//
//  CheckBoxTableViewCell.swift
//  My Swift iOS App
//
//  Created by Admin on 12/04/22.
//

import UIKit

class CheckBoxTableViewCell: UITableViewCell {
    
    @IBOutlet weak var Cimg: UIImageView!
    @IBOutlet weak var Clbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
