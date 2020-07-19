//
//  aboutMe.swift
//  FirebaseTemplate
//
//  Created by Hussain Ashkanani on 7/17/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class aboutMe: UIViewController {

    var aboutMeData: photographersProfile!
    
    
    @IBOutlet weak var textAboutMe: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAboutMeDetails()
        // Do any additional setup after loading the view.
    }
    
    func setAboutMeDetails() {
        textAboutMe.text = aboutMeData.aboutMe
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
