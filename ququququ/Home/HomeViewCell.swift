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
    
    func setupProcessStatus(status: String) {
        switch status {
        case "Waiting":
            processdesc.backgroundColor = UIColor().hexStringToUIColor(hex: "#FFEECC")
            processdesc.textColor = UIColor().hexStringToUIColor(hex: "#EE8610")
        case "Completed":
            processdesc.backgroundColor = UIColor().hexStringToUIColor(hex: "#CBFFE6")
            processdesc.textColor = UIColor().hexStringToUIColor(hex: "#03791D")
        default:
            processdesc.backgroundColor = UIColor().hexStringToUIColor(hex: "#F2F2F2")
            processdesc.textColor = UIColor().hexStringToUIColor(hex: "#8E8E93")
        }
        processdesc.layer.masksToBounds = true
        processdesc.layer.cornerRadius = 10
    }
    
}
