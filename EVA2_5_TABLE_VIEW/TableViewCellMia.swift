//
//  TableViewCellMia.swift
//  EVA2_5_TABLE_VIEW
//
//  Created by TEMPORAL2 on 15/03/17.
//  Copyright © 2017 comdanelly. All rights reserved.
//

import UIKit

class TableViewCellMia: UITableViewCell {
    @IBOutlet var lblNombre: UILabel!
    @IBOutlet var lblDescr: UILabel!
    @IBOutlet var imgI: UIImageView!
    @IBOutlet var ubic: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
