//
//  TableViewCell.swift
//  Contacts
//
//  Created by Ryan Anderson on 1/10/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var contactName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
