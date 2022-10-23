//
//  TableViewCell.swift
//  CustomTabelViewData 1
//
//  Created by Mac on 14/10/22.


import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!

    
    
    @IBOutlet weak var Img: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
