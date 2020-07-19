//
//  photographers.swift
//  FirebaseTemplate
//
//  Created by Hussain Ashkanani on 7/14/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import Foundation



class photographersProfile {
    var photographerName: String = ""
    var photographerJob: String
    var photographerImage: String
    var photographerRating: String
    var aboutMe: String
    var picture1: String
    var picture2: String
    var picture3: String
    var picture4: String
    var offers1: String
    var Offers2: String
    var Offers3: String
    
    init(name: String, job: String, image: String, ratingImage: String, aboutMe: String, picture1: String, picture2: String, picture3: String, picture4: String, offers1: String, offers2: String, offers3: String) {
        self.photographerName = name
        self.photographerJob = job
        self.photographerImage = image
        self.photographerRating = ratingImage
        self.aboutMe = aboutMe
        self.picture1 = picture1
        self.picture2 = picture2
        self.picture3 = picture3
        self.picture4 = picture4
        self.offers1 = offers1
        self.Offers2 = offers2
        self.Offers3 = offers3
        
    }
}

var photographersData = [
    
    photographersProfile(name: "عبدالعزيز محمد", job: "متخصص في تصوير المنتجات", image: "fakeperson11",ratingImage: "starRating1",
                         
                         aboutMe: "بدأت مشواري في التصوير منذ عام ٢٠١٥ من خلال تصوير المنتجات و تعمقت في عالم تصوير الفيديو في عالم ٢٠١٨ ،   معداتي التصويرية التي أستخدمها :    Nikon 700D | LS-mini 20d All-Daylight Kit | Multi-Pattern Dual - NT2-A"
        
        , picture1: "food1", picture2: "food2", picture3: "food3", picture4: "food4", offers1: "offers1", offers2: "offers2", offers3: "offers3"),
    
    
    
    
    photographersProfile(name: "عبدالوهاب حسن", job: "متخصص في تصوير الأشخاص", image: "fakeperson22",ratingImage: "starRating2",
                         
                         aboutMe: "بدأت مشواري في التصوير منذ عام ٢٠٠٩ من خلال تصوير الأشخاص و تعمقت في عالم تصوير الفيديو في عالم  ٢٠١٥ ،   معداتي التصويرية التي أستخدمها :   Canon 5D Mark IV | SIGMA 24-70mm F2 DG HSM | Farseeing FSH7Kit"
        
        
        , picture1: "portrait1", picture2: "portrait7", picture3: "portrait3", picture4: "portrait4", offers1: "offers4", offers2: "offers5", offers3: "offers6"),
    
    
    
    
    photographersProfile(name: "فاطمة سالم", job: "متخصص في تصوير الأشخاص", image: "fakeperson33",ratingImage: "starsRating3",
                         
                         aboutMe: "بدأت مشواري في التصوير منذ عام ٢٠١٧ من خلال تصوير الأشخاص و تعمقت في عالم تصوير الفيديو في عام ٢٠١٩ ،   معداتي التصويرية التي أستخدمها :   Canon 90D DSLR | 18-55mm lens kit "
        
        , picture1: "portrait2", picture2: "portrait5", picture3: "portrait6", picture4: "", offers1: "offers7", offers2: "offers8", offers3: "offers9"),
    
    
    
    
    
    photographersProfile(name: "جاسم عبدالله", job: "متخصص في تصوير المنتجات", image: "fakeperson44", ratingImage: "starsRating4",
                         
                         aboutMe: "بدأت مشواري في التصوير منذ عام ٢٠١١ من خلال تصوير المنتجات و تعمقت في عالم تصوير الفيديو في عام ٢٠١٤ ،   معداتي التصويرية التي أستخدمها :   Canon EOS R Mirrorless | Mount Adapter EF-EOS R"
        
        , picture1: "food5", picture2: "food6", picture3: "food7", picture4: "food8", offers1: "offers10", offers2: "offers11", offers3: "")
    



]
