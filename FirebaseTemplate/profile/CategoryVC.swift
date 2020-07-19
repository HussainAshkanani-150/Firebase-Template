//
//  CategoryVC.swift
//  FirebaseTemplate
//
//  Created by Hussain Ashkanani on 7/14/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController {

  var categories = ["Action", "Drama", "Science Fiction", "Kids", "Horror"]
    }
        
    extension CategoryVC : UITableViewDelegate { }

    extension CategoryVC : UITableViewDataSource {
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                    return 1

        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CategoryRow
            
           //  let cell1 = tableView.dequeueReusableCell(withIdentifier: "videoCell", for: indexPath) as! CategoryRow
            
                   return cell
        }
        
       

        func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return categories.count
        }
        
        func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return categories[section]
        }



        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
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
