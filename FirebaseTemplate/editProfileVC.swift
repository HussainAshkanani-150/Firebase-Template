//
//  editProfileVC.swift
//  FirebaseTemplate
//
//  Created by Hussain Ashkanani on 7/16/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit
import Firebase

class editProfileVC: UIViewController {

    @IBOutlet weak var userEmail: UITextField!
    @IBOutlet weak var userFirstName: UITextField!
    @IBOutlet weak var userLastName: UITextField!
    
    
    var userInfo: User = User()
    var userID = Auth.auth().currentUser?.uid
    override func viewDidLoad() {
        super.viewDidLoad()
        getUserData()
      
    }
   // func okAlert(title: String, message: String) {
        
    //}
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func save(_ sender: Any) {
        
        var updatedInfo : User = User(firstName: userFirstName.text!, lastName: userLastName.text!, email: userEmail.text!)
       
        
        Networking.createItem(updatedInfo, inCollection: "users/", withDocumentId: "\(userID!)") {
            print("data succeful")
           // self.okAlert(title: "تم التعديل على بياناتك بنجاح!", message: "شكرا")
        }
    }
    
    func getUserData() {
        Networking.getSingleDocument("users/\(userID!)") { (user: User) in
            self.userInfo = user
            print(self.userInfo)
            self.userEmail.text = self.userInfo.email
            self.userFirstName.text = self.userInfo.firstName
            self.userLastName.text = self.userInfo.lastName
            
            
        }
        
        
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
