//
//  DetailViewController.swift
//  CustomTabelViewData 1
//
//  Created by Mac on 23/10/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var dimag: UIImageView!
    
    @IBOutlet weak var dlabel1: UILabel!
    
    @IBOutlet weak var dlabel2: UILabel!
    
    var strdlabel1: String!
    var strlabel2: String!
    var striImg: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()

        dlabel1.text = strdlabel1
        dlabel2.text = strlabel2
        dimag.image = striImg
      
    }
    

   
}
