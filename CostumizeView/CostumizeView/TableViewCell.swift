//
//  TableViewCell.swift
//  CostumizeView
//
//  Created by trainee on 31/10/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var imgVw: UIImageView!
    @IBOutlet weak var lblTxt: UILabel!
    @IBOutlet weak var lblTxt2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
