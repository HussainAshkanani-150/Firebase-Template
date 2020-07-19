//
//  Offers.swift
//  FirebaseTemplate
//
//  Created by Hussain Ashkanani on 7/18/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class Offers: UIViewController {

    @IBOutlet weak var offers1: UIImageView!
    @IBOutlet weak var offers2: UIImageView!
    @IBOutlet weak var offers3: UIImageView!
    
    var offersData: photographersProfile!
    
    override func viewDidLoad() {
        super.viewDidLoad()
setOffersDetails()
        // Do any additional setup after loading the view.
    }
    
    func setOffersDetails() {
        
        offers1.image = UIImage(named: offersData.offers1)
        offers2.image = UIImage(named: offersData.Offers2)
        offers3.image = UIImage(named: offersData.Offers3)
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
