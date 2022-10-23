//
//  ViewController.swift
//  CustomTabelViewData 1
//
//  Created by Mac on 14/10/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    
    
    
       var array1 = ["VISHAKHA","PRANJAL","PALLAVI","DIMPAL","ANJALI","SHWETA","ASHWINI"]
       var array2 = ["vishakha","pranjal","pallavi","dimpal","anjali","shweta","ashwini"]
       var arrimg = [#imageLiteral(resourceName: "c7"),#imageLiteral(resourceName: "c6"),#imageLiteral(resourceName: "c6"),#imageLiteral(resourceName: "c3"),#imageLiteral(resourceName: "c5"),#imageLiteral(resourceName: "c3"),#imageLiteral(resourceName: "c8")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.label1.text = array1[indexPath.row]
        cell.label2.text = array2[indexPath.row]
        cell.Img.image = arrimg[indexPath.row]
        return cell
       // let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        //cell?.textLabel?.text = array1[indexPath.row]
       // cell?.detailTextLabel?.text = array2[indexPath.row]
        //return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.view.backgroundColor = UIColor.blue
        
        let detail:DetailViewController = self.storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        detail.strdlabel1 = array1[indexPath.row]
        detail.strlabel2 = array2[indexPath.row]
        detail.striImg = arrimg[indexPath.row]
        
        self.navigationController?.pushViewController(detail, animated: true)
    }
   /* func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            array1.remove(at: indexPath)
            array2.remove(at: indexPath)
            tableview.deleteRows(at: [indexPath], with: .fade)
        }
 */
    }



