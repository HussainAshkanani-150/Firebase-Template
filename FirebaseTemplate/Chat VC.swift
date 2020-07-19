//
//  Chat VC.swift
//  FirebaseTemplate
//
//  Created by Hussain Ashkanani on 7/18/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class Chat_VC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var myTable: UITableView!
    
    var photographers: [String] = ["عبدالعزيز محمد", "عبدالوهاب حسن", "فاطمة سالم", "جاسم عبدالله"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        myTable.delegate = self
        myTable.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photographers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = photographers[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        // show chat messages
        let vc = ChatVC2()
        vc.title = "محادثات"
        navigationController?.pushViewController(vc, animated: true)
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
