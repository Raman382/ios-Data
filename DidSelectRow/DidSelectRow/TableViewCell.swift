//
//  TableViewCell.swift
//  DidSelectRow
//
//  Created by trainee on 05/11/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var imgVw: UIImageView!
    @IBOutlet weak var lblTxt: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
