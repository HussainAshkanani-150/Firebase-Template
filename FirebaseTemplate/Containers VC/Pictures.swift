//
//  Pictures.swift
//  FirebaseTemplate
//
//  Created by Hussain Ashkanani on 7/18/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class Pictures: UIViewController {
    
    @IBOutlet weak var picture1: UIImageView!
    @IBOutlet weak var picture2: UIImageView!
    @IBOutlet weak var picture3: UIImageView!
    @IBOutlet weak var picture4: UIImageView!
    
    var picturesData: photographersProfile!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
setPicturesDetails()
        // Do any additional setup after loading the view.
    }
    
    func setPicturesDetails() {
      
        picture1.image = UIImage(named: picturesData.picture1)
        picture2.image = UIImage(named: picturesData.picture2)
        picture3.image = UIImage(named: picturesData.picture3)
        picture4.image = UIImage(named: picturesData.picture4)
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
