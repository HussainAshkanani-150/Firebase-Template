//
//  Category.swift
//  FirebaseTemplate
//
//  Created by Hussain Ashkanani on 7/15/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import Foundation
import UIKit

struct Category {
    let categoryTitle: String
    
    func categoryImage() -> UIImage {
        return UIImage(named: categoryTitle)!
        
    }
    var category: [Category] = [
        
        Category(categoryTitle: "صور لأعمالي"),
        Category(categoryTitle: "العروض"),
        Category(categoryTitle: "تعليقات"),
        Category(categoryTitle: "نبذة عني"),
        Category(categoryTitle: "التقييم")
    ]
    
}
