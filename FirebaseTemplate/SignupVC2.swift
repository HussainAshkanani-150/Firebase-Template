//
//  SignupVC2.swift
//  FirebaseTemplate
//
//  Created by Hussain Ashkanani on 7/12/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class SignupVC2: UIViewController {

    @IBOutlet weak var firstnameField: UITextField!
    @IBOutlet weak var lastnameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmpasswordField: UITextField!
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    
    var userType: String = ""
    
    @IBAction func asPhotographer(_ sender: Any) {
    userType = "photographer"
        print("أهلا بالمصور")
    }
    
    @IBAction func asRegular(_ sender: Any) {
        userType = "regular"
        print("أهلا بالمستخدم")
    }
    
    
    
    
    @IBAction func signUp() {
        let email = emailField.text!
        let password = passwordField.text!
        let confirmPassword = confirmpasswordField.text!
        let firstName = firstnameField.text!
        let lastName = lastnameField.text!
        
        let user = User(firstName: firstName,
        lastName: lastName,
        email: email)
        
        if validatePassword(password: password, confirmPassword: confirmPassword){
                   Networking.signUp(user: user, password: password, success:  { uid in
                    // ✅ Success
                    print("تم إنشاء حسابك بنجاح")
                    self.performSegue(withIdentifier: "signed", sender: nil)
                }){
                    // ❌ Failed
                    self.errorMessage(message: "تعذر تسجيل الدخول، تأكد من صحة البيانات")
                }
            }
            else{
                errorMessage(message: "كلمة المرور غير متطابقة")
            }
        
        
        
        
        
        if userType == "photographer" {
            performSegue(withIdentifier: "TophotographerPage", sender: nil)
        }
        else if userType == "regular" {
            performSegue(withIdentifier: "ToHome", sender: nil)
        }
        }
        
    
    
    
    
    
    
    
        func validatePassword(password: String, confirmPassword: String) -> Bool{
            return password == confirmPassword
        }
        
        func errorMessage(message: String){
            let alertController = UIAlertController(title: "Opps", message: message , preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .cancel)
            alertController.addAction(okAction)
            present(alertController, animated: true)
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

