//
//  TableViewCell.swift
//  ViewHeaderFooter
//
//  Created by trainee on 30/10/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var Img: UIImageView!
    @IBOutlet weak var lblTxt: UILabel!
    @IBOutlet weak var lbltxt2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
