//
//  ViewController.swift
//  flipKart
//
//  Created by ddukk15 on 21/10/22.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

         if indexPath.row == 0 {
                    let cell = tableView.dequeueReusableCell(withIdentifier: "cellOne", for: indexPath)
                            //set the data here
                            return cell
                        }
                        else if indexPath.row == 1{
                            let cell = tableView.dequeueReusableCell(withIdentifier: "cellTwo", for: indexPath)
                                    //set the data here
                                    return cell
                        }else {
                            let cell = tableView.dequeueReusableCell(withIdentifier: "imCell", for: indexPath) as! FIRSTTableViewCell
                            
                            return cell
                        }
           
    }
    

    @IBOutlet weak var imF: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imF.delegate = self
        imF.dataSource = self
        
        
    }


}

