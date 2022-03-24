//
//  ApiTableViewCell.swift
//  My Swift iOS App
//
//  Created by Admin on 17/03/22.
//

import UIKit

class ApiTableViewCell: UITableViewCell {

    @IBOutlet weak var ApiLbl: UILabel!
    @IBOutlet weak var authorLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
