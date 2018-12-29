//
//  HeaderView.swift
//  StretchyHeaderCollectionView
//
//  Created by MUKUL on 29/12/18.
//  Copyright © 2018 CoderWork. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {

    class func loadNib() -> HeaderView {
         let nib_Array = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.last
        return nib_Array as! HeaderView
      }

}
