//
//  CategoryRow.swift
//  FirebaseTemplate
//
//  Created by Hussain Ashkanani on 7/14/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class CategoryRow : UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    }

extension CategoryRow : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "videoCell", for: indexPath as IndexPath)
        
            return cell
        }

    }

extension CategoryRow : UICollectionViewDelegateFlowLayout {
    
    private func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let itemsPerRow:CGFloat = 4
        let hardCodedPadding:CGFloat = 5
        let itemWidth = (collectionView.bounds.width / itemsPerRow) - hardCodedPadding
        let itemHeight = collectionView.bounds.height - (2 * hardCodedPadding)
        return CGSize(width: itemWidth, height: itemHeight)
    }
    
}

