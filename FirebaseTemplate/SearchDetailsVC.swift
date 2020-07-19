//
//  SearchDetailsVC.swift
//  FirebaseTemplate
//
//  Created by Hussain Ashkanani on 7/18/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class SearchDetailsVC: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var data = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = data
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
