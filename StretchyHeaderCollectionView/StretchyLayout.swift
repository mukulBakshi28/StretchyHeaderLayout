//
//  StretchyLayout.swift
//  StretchyHeaderCollectionView
//
//  Created by MUKUL on 29/12/18.
//  Copyright © 2018 CoderWork. All rights reserved.
//

import UIKit

class StretchyLayout: UICollectionViewFlowLayout {
     override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        
        let layoutAttributes = super.layoutAttributesForElements(in: rect)
         for layouts in layoutAttributes! {
             if layouts.representedElementKind == UICollectionView.elementKindSectionHeader {
                let offsetY =  collectionView?.contentOffset.y
                let heightY = layouts.frame.size.height - offsetY!
                 layouts.frame = CGRect(x: 0, y: offsetY!, width: collectionView!.frame.size.width, height: heightY)
             }
         }
         return layoutAttributes
     }
     override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }
}
