//
//  SelectThemeCell.swift
//  SwitchingThemes
//
//  Created by Ataberk Turan on 17.11.2021.
//

import UIKit

class SelectThemeCell: UITableViewCell {
    
    let reuseID = "SelectThemeCell"

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
