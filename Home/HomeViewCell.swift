//
//  HomeViewCell.swift
//  ququququ
//
//  Created by Buratsakorn Petchdee on 22/2/2565 BE.
//

import UIKit

class HomeViewCell: UITableViewCell {

    @IBOutlet weak var branchdes: UILabel!
    @IBOutlet weak var accountdesc: UILabel!
    @IBOutlet weak var processdesc: UILabel!
    @IBOutlet weak var datedesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
