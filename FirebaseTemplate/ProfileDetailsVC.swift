//
//  ProfileDetails.swift
//  FirebaseTemplate
//
//  Created by Hussain Ashkanani on 7/15/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class ProfileDetailsVC: UIViewController {

  
    var profileData:photographersProfile!
    
    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var fourthview: UIView!
    
    
    
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileJob: UILabel!
    @IBOutlet weak var profileRating: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
setProfileDetails()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl)
    {
        if (sender.selectedSegmentIndex == 0)
        {
            UIView.animate(withDuration: 0.5,animations:
                {
                self.firstView.alpha = 1.0
                self.secondView.alpha = 0.0
                self.thirdView.alpha = 0.0
                self.fourthview.alpha = 0.0
            })
         //   performSegue(withIdentifier: "first", sender: nil)
        }
        else if (sender.selectedSegmentIndex == 1) {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.firstView.alpha = 0.0
                    self.secondView.alpha = 1.0
                    self.thirdView.alpha = 0.0
                    self.fourthview.alpha = 0.0
        })
         //   performSegue(withIdentifier: "second", sender: nil)
    }
            
    else if (sender.selectedSegmentIndex == 2) {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.firstView.alpha = 0.0
                    self.secondView.alpha = 0.0
                    self.thirdView.alpha = 1.0
                    self.fourthview.alpha = 0.0
        })
          //  performSegue(withIdentifier: "third", sender: nil)
    }
        else if (sender.selectedSegmentIndex == 3) {
                UIView.animate(withDuration: 0.5, animations:
                    {
                        self.firstView.alpha = 0.0
                        self.secondView.alpha = 0.0
                        self.thirdView.alpha = 0.0
                        self.fourthview.alpha = 1.0
            })
           // performSegue(withIdentifier: "fourth", sender: nil)
        }
    }
    
    
    
    
    func setProfileDetails() {
        
        profileName.text = profileData.photographerName
        
        profileImage.image = UIImage(named: profileData.photographerImage)
        
        profileJob.text = profileData.photographerJob
        
        profileRating.image = UIImage(named: profileData.photographerRating)
      
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      // Get the new view controller using segue.destination.
      // Pass the selected object to the new view controller.
      
    if segue.identifier == "third" {
                 
                  let vc = segue.destination as! aboutMe
                  vc.aboutMeData = profileData
              }
    else if segue.identifier == "first" {
        
        let vc = segue.destination as! Pictures
        vc.picturesData = profileData
        }
        else if segue.identifier == "second" {
        
        let vc = segue.destination as! Offers
        vc.offersData = profileData
        }
        
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



 
