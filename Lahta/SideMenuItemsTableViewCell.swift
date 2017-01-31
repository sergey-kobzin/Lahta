//
//  SideMenuItemsTableViewCell.swift
//  Lahta
//
//  Created by Developer on 31.01.17.
//  Copyright © 2017 Sergey.Kobzin. All rights reserved.
//

import UIKit

class SideMenuItemsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var label: String!
    var icon: UIImage!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setData(_ label: String?, _ icon: UIImage?) {
        if let bindedLabel = label {
            titleLabel.text = bindedLabel
        } else {
            titleLabel.text = ""
        }
        
        if let bindedIcon = icon {
            iconImageView.image = bindedIcon
        }
    }
    
}
